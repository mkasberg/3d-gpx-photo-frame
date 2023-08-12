#!/usr/bin/env ruby

require 'thor'
require 'json'

require_relative 'lib/formatter'
require_relative 'lib/gpx_reader'
require_relative 'lib/stl_writer'

class PhotoFrameCLI < Thor
  desc 'generate FILE', 'Generate .scad and .stl files from a GPX FILE'
  option :type, desc: '0: Plaque, 1: 4x6 MINI, 2: 2.5x3.5, 3: 2.5x3.5 more text, 4: 4x6 bigger'
  option :title, desc: 'Title to display on the model, omit to use GPX name'
  option :text1, desc: 'Line 1 to display on the model, omit to use distance'
  option :text2, desc: 'Line 2 to display on the model, omit to use elevation'
  option :text3, desc: 'Line 3 to display on (some) models, omit to use elapsed time'
  def generate(file)
    gpx_contents = File.read(file)
    summary = GpxReader.summary(gpx_contents)

    padded_totals = {
      distance: Formatter.distance(summary[:total_distance]),
      elevation: Formatter.elevation(summary[:elevation_gain]),
      time: Formatter.time(summary[:elapsed_time])
    }
    padded_totals = Formatter.left_pad(padded_totals)

    title = if options[:title].present? then options[:title] else summary[:name] end
    text1 = if options[:text1].present? then options[:text1] else "Distance: #{padded_totals[:distance]}" end
    text2 = if options[:text2].present? then options[:text2] else "Elevation: #{padded_totals[:elevation]}" end
    text3 = if options[:text3].present? then options[:text3] else "Elapsed Time: #{padded_totals[:time]}" end

    model_type = options[:type] || '1'

    if ['1', '2'].include?(model_type)
      text3 = ""
    end

    template_data = {
      elevation: summary[:elevation].to_json,
      distance: summary[:distance].to_json,
      object_type: 'frame',
      model_type: model_type,
      title: title,
      text1: text1,
      text2: text2,
      text3: text3
    }

    base_name = File.basename(file, '.gpx')
    scad_filename = "#{base_name}-#{model_type}.scad"

    puts "Rendering SCAD Template..."
    StlWriter.render_template(
      'GpxPhotoFrame.scad.erb',
      scad_filename,
      template_data
    )

    puts "Rendering STL. This might take several minutes..."
    StlWriter.render(scad_filename)
  end
end

PhotoFrameCLI.start(ARGV)
