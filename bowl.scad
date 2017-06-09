$fn=50;
size=20;
wall_ratio=10;

inner_size=size-size/wall_ratio;

translate([0,0,inner_size])
	rotate(a=180,v=[0,1,0])
		union() {
			difference() {
				sphere(size);
				sphere(inner_size);
				translate([-size,-size,-size])
					cube([size*2,size*2,size]);
				translate([-size,-size,inner_size])
					cube([size*2,size*2,size/wall_ratio]);
			}
			intersection() {
				sphere(size);
				translate([-size,-size,size-2*size/wall_ratio])
					cube([size*2,size*2,size/wall_ratio]);
			}
		}