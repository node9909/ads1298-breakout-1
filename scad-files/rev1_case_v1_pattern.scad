// This file generates a 2D pattern used for laser-cutting a case for a rev1
// eeg-mouse board with the analog and digital patch shields.

include <rev1_case_v1_dimensions.scad>
include <rev1_case_v1.scad>
render_case_model = 0;

// based on the value for 3mm acrylic at
// http://blog.ponoko.com/2008/09/11/how-much-material-does-the-laser-burn-away/
kerf = 0.2;

// move the origin from the edge of the PCB to the corner of the acrylic case
translate([-case_top_bounding_x, -case_top_bounding_y]) top();

// move the origin of the bottom piece to not overlap the top
translate([-case_top_bounding_x,
    -case_top_bounding_y + case_top_bounding_width + part_gap])
    bottom();
