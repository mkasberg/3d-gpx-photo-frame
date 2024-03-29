# 3D GPX Photo Frame

Use OpenSCAD to generate a 3D printable photo frame from any GPX course!

![A 3D printed GPX photo frame](sample.jpg)

## Docker Usage

If you don't want to install compatible versions of Ruby and OpenSCAD, you can
use Docker to run this software. A Dockerfile is provided, you'll need to build
the image yourself. There's a Makefile to help with this.

1. Run `make bash`. This will build the `3d_gpx_photo_frame:latest` Docker
   image and drop you into a terminal.
2. Run `bundle install` to install Ruby dependencies.
3. Run `bundle exec cli.rb generate <filename.gpx> --title <title>`.
   `<filename.gpx>` should be a GPX file in the project directory.

## Dependencies

- **Ruby:** I think most recent versions of Ruby should work fine. Tested with
  Ruby 3.0.
- **OpenSCAD:** Use 2021.01+. If you use the nightly, we'll enable fast-csg to
  run faster.

## Usage

1. Run `bundle install` to install required Ruby gems.
2. Use `bundle exec cli.rb help generate` to see the CLi usage.
3. Run `bundle exec cli.rb generate <filename.gpx> --title <title>`. This will
   produce `<filename>.scad` and `<filename>.stl` in the project directory.

If you want, you can use OpenSCAD to customize parameters on the generated SCAD
file.

