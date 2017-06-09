$fn=50;
hole=3;
thickness=1;
translate([0,0,-hole]) rotate_extrude() translate([thickness+hole,thickness+hole,0]) circle(thickness);