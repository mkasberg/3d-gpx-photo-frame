// Mike's Experiment for Elevation 3D Print

// Model type
// Variables below use an array with this index.
// 0: No Photo
// 1: 4x6 on Prusa MINI
// 2: 2.5x3.5 on Prusa MINI
// 3: 2.5x3.5 extra text on Prusa MINI
// 4: 4x6 on Prusa i3
type = 1;

// Object to print
// "frame", "back"
object_type = "frame";

// The activity title. Max X chars.
title = "Century *100*";

// Bold fonts print best (especially at small sizes)
// Make sure these fonts are installed
font = "Roboto Mono:style=bold";
title_font = "Roboto:style=bold";

text1_config = ["Distance: 118 mi", "118 mi", "118 mi", "Distance: 118 mi", "Distance: 118 mi"];
// Stats text. E.g. Total distance.
text1 = text1_config[type];

// Stats text. E.g. Total elevation.
text2_config = ["Elevation: 10,800 ft", "10,800 ft", "10,800 ft", "Elevation: 10,800 ft", "Elevation: 10,800 ft",];
text2 = text2_config[type];

text3_config = ["Elapsed Time: 12:36:05", "", "", "Elapsed Time: 12:36:05", "Elapsed Time: 12:36:05"];
text3 = text3_config[type];

// Elevation data. Length should match distance data.
elevation_values = [2367.7,2426.8,2479.5,2493.3,2496.0,2529.8,2541.2,2555.4,2585.3,2612.9,2639.6,2668.0,2682.1,2710.6,2740.1,2778.0,2799.3,2819.3,2859.8,2885.6,2924.4,2970.7,3018.3,3088.9,3117.6,3157.6,3180.4,3243.9,3289.2,3348.6,3328.5,3394.3,3383.2,3348.6,3335.2,3326.1,3296.2,3252.7,3218.7,3168.4,3133.4,3085.9,3033.0,3003.8,2973.2,2952.4,2904.3,2870.9,2849.1,2824.2,2789.6,2741.6,2718.7,2680.9,2625.7,2560.1,2510.9,2474.3,2437.5,2402.1,2376.4,2343.6,2310.2,2317.4,2340.8,2354.9,2366.0,2403.3,2418.5,2449.2,2469.5,2483.8,2504.3,2520.1,2546.7,2557.4,2578.2,2582.1,2593.0,2646.3,2686.3,2776.9,2803.7,2858.3,2902.7,2968.5,2981.4,2995.5,3052.1,3064.0,3100.0,3125.2,3147.8,3202.5,3243.3,3280.0,3306.6,3362.7,3403.5,3448.2,3483.6,3531.2,3548.0,3574.5,3592.0,3616.6,3635.5,3650.1,3609.8,3578.1,3549.0,3509.5,3494.4,3419.3,3400.3,3383.9,3360.6,3320.1,3305.5,3273.8,3212.1,3167.3,3128.6,3067.3,3021.1,2974.7,2915.4,2867.9965971,2831.4,2827.7,2778.5633358,2750.2,2816.6,2821.6,2899.1,2846.2,2802.5,2757.4,2764.1,2762.1,2773.5,2787.2,2795.3,2793.5,2773.2,2791.5,2826.3,2841.5,2879.1,2947.2,2961.7,2960.2,2979.4,3003.8,3028.9,3051.5,3068.4,3098.2,3125.4,3140.2,3172.7,3204.1,3219.2,3206.9,3167.5,3140.1,3109.9,3048.6,2982.3,2950.7,2918.0,2869.5,2770.1,2711.3,2658.6,2640.9,2606.2,2561.2,2564.6,2542.6,2529.4,2518.6,2496.9,2490.7,2488.6,2466.8,2444.8,2412.9,2414.7,2378.1,2368.2,2352.5,2349.4,2327.1,2306.7,2300.2,2283.3,2283.9,2267.8,2269.2];
//elevation_values = [10, 8, 1, 9];

// Distance data. Length should match elevation data.
distance_values = [0,1.09534,2.05949,2.62504,3.29631,3.77075,4.2262,4.65104,5.17588,5.76844,6.37238,6.86569,7.31851,7.80222,8.42116,9.39272,10.04849,10.94053,11.78631,12.32717,12.99049,13.65762,14.74658,16.03179,16.67488,17.53516,18.29228,19.52972,20.47896,21.57574,22.51088,23.76141,24.50997,25.19672,25.87241,26.8791,27.79216,28.70773,29.76114,30.64688,31.31685,32.21041,33.041,33.73352,34.26668,34.70927,35.36615,35.96827,36.49112,36.80373,37.60061,38.25779,38.91078,39.43093,40.40891,41.83668,42.87232,43.85902,44.57891,45.63577,46.50641,47.92144,49.26413,50.69834,52.31433,53.46513,54.43707,56.41811,57.40118,58.9468,59.88745,60.78074,61.9708,63.64551,65.1338,66.03767,66.83186,68.72821,69.32716,70.74453,71.6787,73.22724,74.70841,75.81156,77.64688,79.15754,80.49296,81.61417,82.437,83.24429,84.20462,84.88,85.69278,86.75962,88.21404,89.29112,89.78376,90.72356,91.56915,92.15696,92.77121,93.31539,93.74165,94.20781,94.58137,94.99752,95.3755,95.83708,96.45613,96.89115,97.42938,98.0808,98.31663,99.56091,100.08779,100.31544,100.82432,101.36486,101.68338,102.26623,103.15149,103.95919,104.53906,105.61799,106.33344,107.14377,108.21829,108.94504,110.90193,112.52741,113.78408,115.65733,117.6424,118.35091,119.62738,120.51259,121.21602,122.28932,122.93016,123.7874,124.16908,125.06071,125.54006,126.31312,128.0564,130.13208,131.43468,132.73066,133.94937,135.66943,138.23217,139.1394,140.2662,141.17682,141.90369,142.50864,143.31887,144.05855,144.62816,145.74156,146.47389,147.13333,147.67752,149.65764,151.20699,152.30308,152.99563,154.22261,155.33231,155.87201,156.57349,157.67162,159.90137,161.5021,162.42699,162.8019,163.62787,165.40474,166.36118,167.40439,168.35246,171.04037,172.44354,172.72472,173.6973,174.57698,175.45881,176.84239,177.11071,178.99629,179.76576,180.47912,181.1827,182.27717,183.82522,184.5054,185.75086,185.90294,187.39407,187.80667];
//distance_values = [0, 1, 2, 3];

// Total output width (mm)
width_config = [180, 180, 180, 180, 230];
width = width_config[type];

// Total output height (mm)
height_config = [100, 180, 140, 160, 200];
height = height_config[type];

// Output thickness (not including text) (mm)
// thickness = 20;
thickness = 20;

// Text thickness (in addition to base) (mm)
text_thickness = 2;

// Margins (around text) (mm)
margin = 5;

// Font size (mm height)
font_size = 5;

// Title font size (mm height)
big_font_size = 8;

// Tolerance around the outside of the photo on the back of the frame. (Probably no adjustment needed.)
outer_photo_margin = 0.5;

// Where the front of the frame overlaps the photo. (Probably no adjustment needed.)
inner_photo_margin = 3;

// Thickness of the back plate that holds the photo. (Probably no adjustment needed.)
back_plate_thickness = 1;

// END Params.
// Everything below here is generation code.

function dist2d(a, b) = sqrt((b.x-a.x)^2 + (b.y-a.y)^2);

// Photo positioning
nominal_photo_dimensions_config = [[0, 0], [154, 103], [88.9, 63.5], [88.9, 63.5], [154, 103]];
inner_photo_position_y = [0, margin * 2 + big_font_size, margin * 2 + big_font_size, margin + big_font_size + 2*margin + 3*font_size, margin + big_font_size + 2*margin + 3*font_size];
outer_photo_dimensions = [nominal_photo_dimensions_config[type].x + 2*outer_photo_margin, nominal_photo_dimensions_config[type].y + 2*outer_photo_margin];
inner_photo_dimensions = [nominal_photo_dimensions_config[type].x - 2*inner_photo_margin, nominal_photo_dimensions_config[type].y - 2*inner_photo_margin];
inner_photo_position = [(width - inner_photo_dimensions.x) / 2, inner_photo_position_y[type]];

// The height of the rectangular text plate.
lines = 4;
plate_height_config = [
  margin * (lines + 1) + 3 * font_size + big_font_size,
  3 * margin + big_font_size + inner_photo_dimensions.y,
  3 * margin + big_font_size + inner_photo_dimensions.y,
  margin + big_font_size + 2*margin + 3*font_size + inner_photo_dimensions.y + margin,
  margin + big_font_size + 2*margin + 3*font_size + inner_photo_dimensions.y + margin
];
plate_height = plate_height_config[type];


/**
 * Generates a 3D "extruded cylinder" polyline.
 *
 * @param points should be an array of (x, y) pairs to plot.
 */
module polyline(points, diameter = 2) {
  difference() {
    union() {
      for(i = [0:len(points)-2]) {
        length=dist2d(points[i], points[i+1]);
        dx = points[i+1].x - points[i].x;
        dy = points[i+1].y - points[i].y;
        translate(points[i]) {
          rotate([0, 90, atan(dy/dx)]) {
            linear_extrude(length) {
              circle(d = diameter, $fn=50);
            }
          }
          sphere(d=diameter, $fn=50);
        }
        translate(points[i+1]) {
          sphere(d=diameter, $fn=50);
        }
      }
    }
    translate([-10, -height/2, -5]) cube([10, height, 10]);
    translate([width, -height/2, -5]) cube([10, height, 10]);
  }
}

/**
 * Creates a 3D "chart" from x and y value arrays.
 * x and y streams must have the same length.
 */
module chart(x_values, y_values) {
  // The chart takes up the remaining height not taken by the plate.
  // Take off an additional (thickness) for the 45deg slope (to be added on top)
  chart_height = height - plate_height - thickness;
  
  // Convert the values (scalars) to points (x, y).
  x_max = max(x_values);
  y_max = max(y_values);
  y_min = min(y_values);
  chart_points = [
    for( i = [0 : len(x_values) - 1])
    [
      x_values[i] * width / x_max,
      (y_values[i] - y_min) * (chart_height - 0.1) / (y_max - y_min) + 0.1
    ]
  ];
  
   
  // Convert the line points into a polygon (the entire plaque).
  chart_poly = concat([[0, 0]], chart_points, [[width, 0]]); 
    
  // Extrude the plaque.
  linear_extrude(thickness) {
    polygon(chart_poly);
  }
  
  topper_points = [
    for( i = [len(chart_points) - 1 : -1 : 0])
    [
      chart_points[i].x,
      chart_points[i].y + thickness // Reuse thickness for a 45deg angle
    ]
  ];
  shear_matrix = [
    [1, 0, 0, 0],
    [0, 1, -1, -0.001],
    [0, 0, 1, 0]
  ];
  intersection() {
    translate([0, 0.001, 0]) multmatrix(shear_matrix) {
      linear_extrude(thickness) {
        polygon(concat(chart_points, topper_points));
      }
    }
    // Don't let it go below the x axis.
    cube([width, chart_height+thickness, thickness]);
  }

  
  // The current polyline implementation is exceptionally slow.
  // translate([0, 0, thickness]) {
  //   color("orange") polyline(chart_points);
  // }
}

text_1_y = [
  plate_height - margin - font_size,
  margin + font_size + 1,
  margin + font_size + 1,
  margin + big_font_size + 3*margin/2 + 2*font_size,
  margin + big_font_size + 3*margin/2 + 2*font_size
];
text_2_y = [
  plate_height - 2 * margin - 2 * font_size,
  margin,
  margin,
  margin + big_font_size + margin + font_size,
  margin + big_font_size + margin + font_size
];
text_3_y = [
  plate_height - 3 * margin - 3 * font_size,
  0,
  0,
  margin + big_font_size + margin/2,
  margin + big_font_size + margin/2
];
logo_y = [
  2 * margin + big_font_size,
  margin,
  margin,
  3*margin/2 + big_font_size,
  3*margin/2 + big_font_size
];
logo_height = [
  plate_height - 3 * margin - big_font_size,
  big_font_size,
  big_font_size,
  (3 * font_size + margin) * 2,
  (3 * font_size + margin) * 2
];

/**
 * The "text plate" is a 3D rectangular plaque below the chart.
 * It contains all the non-chart info like text, logos, etc.
 */
module text_plate() {
  cube([width, plate_height, thickness]);

  // For text, x is right/left alignment, y is base of the line
  translate([width - margin, text_1_y[type], thickness - 0.001]) {
    color("orange") linear_extrude(text_thickness) {
      text(text1, size = font_size, font = font, halign = "right");
    }
  }
  translate([width - margin, text_2_y[type], thickness - 0.001]) {
    color("orange") linear_extrude(text_thickness) {
      text(text2, size = font_size, font = font, halign = "right");
    }
  }
  if (text3 != "") {
    translate([width - margin, text_3_y[type], thickness - 0.001]) {
      color("orange") linear_extrude(text_thickness) {
        text(text3, size = font_size, font = font, halign = "right");
      }
    }
  }

  // Left Aligned Title
  translate([margin, margin, thickness - 0.001]) {
    color("orange") linear_extrude(text_thickness) {
      text(title, size = big_font_size, font = title_font, halign = "left");
    }
  }
}

photo_box = [
  false,
  true,
  true,
  true,
  true
];

/**
 * Generates a 3D "hanger hole" for hanging on a nail or hook.
 * Note that this module creates a 3D volume that can be removed from another
 * (e.g. with difference).
 */
module hanger_hole() {
  translate([0, 0, 1]) {
    hull() {
      cylinder(h=2, r=3, $fn=30);
      translate([0, 5, 0]) cylinder(h=2, r=3, $fn=30);
    }
  }
  hull() {
    cylinder(h=1.001, r=1.5, $fn=20);
    translate([0, 5, 0]) cylinder(h=1.001, r=1.5, $fn=20);
  }
  cylinder(h=1.001, r=3, $fn=30);
}

/* Clip for the back plate */
module clip() {
  l1 = 10;
  w = 4;
  h = 6;
  a = 15;
  l_tab = h / cos(a);
  
  cube([l1, w, back_plate_thickness]);
  
  translate([l1, 0, 0]) rotate([0, a, 0]) translate([-back_plate_thickness, 0, 0]) cube([back_plate_thickness, w, l_tab]);
  translate([l1+2*h*tan(a), 0, 0]) rotate([0, -a, 0]) cube([back_plate_thickness, w, l_tab]);
  
  translate([l1+2*h*tan(a), 0, 0]) cube([4, w, back_plate_thickness]);
  
  translate([l1+h*tan(a), 0, h]) difference() {
    rotate([-90, 0, 0]) cylinder(h=w, r=back_plate_thickness, $fn=30);
    translate([0, 0, -10]) cube(20, center=true);
  }
}

// Combine all the parts
if (object_type == "frame") {
  difference() {
    union() {
      if (type == 6) {
        translate([0, plate_height - 0.001, 0]) cube([width, height - plate_height, thickness]);
      } else {
        translate([0, plate_height - 0.001, 0]) {
          chart(distance_values, elevation_values);
        }
      }
      text_plate();
    }

    // Hangers on the back.
    // These need to go on the text plate because we don't know the
    // shape of the chart in advance.
    if (type == 1) {
      translate([6, plate_height-10, -0.001]) hanger_hole();
      translate([width-6, plate_height-10, -0.001]) hanger_hole();
    } else {
      translate([20, plate_height-10, -0.001]) hanger_hole();
      translate([width-20, plate_height-10, -0.001]) hanger_hole();
    }

    if (photo_box[type]) {
      front_depth = 2;

      // Photo cutout
      translate([inner_photo_position.x, inner_photo_position.y, -0.001]) cube([inner_photo_dimensions.x, inner_photo_dimensions.y, thickness * 2]);
      translate([inner_photo_position.x - inner_photo_margin - outer_photo_margin, inner_photo_position.y - inner_photo_margin - outer_photo_margin, -2]) cube([outer_photo_dimensions.x, outer_photo_dimensions.y, thickness]);
      
      // Back clip slots
      translate([
        inner_photo_position.x - inner_photo_margin - outer_photo_margin - 3,
        inner_photo_position.y + (inner_photo_dimensions.y - 5)/2,
        thickness - front_depth - 2
      ]) cube([20, 5, 2]);
      translate([
        inner_photo_position.x + inner_photo_dimensions.x + inner_photo_margin + outer_photo_margin - 20 + 3,
        inner_photo_position.y + (inner_photo_dimensions.y - 5)/2,
        thickness - front_depth - 2
      ]) cube([20, 5, 2]);
    }
  }
}

if (object_type == "back") {
  len_x = outer_photo_dimensions.x - 0.5;
  len_y = outer_photo_dimensions.y - 0.5;
  
  difference() {
    cube([len_x, len_y, back_plate_thickness]);
    
    translate([-0.001, (len_y - 5)/2, -1]) cube([15, 4+1, back_plate_thickness+2]);
    translate([len_x+0.001 - 15, (len_y - 5)/2, -1]) cube([15, 4+1, back_plate_thickness+2]);
  }
  
  translate([-1.5, (len_y - 4)/2, 0]) clip();
  translate([len_x + 1.5, 4 + (len_y - 4)/2, 0]) rotate([0, 0, 180]) clip();
}
