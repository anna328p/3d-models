angle=15;
standx=80;
standy=146;
standthickness=5;
phonethickness=12;
padthickness=9;
jutoutheight=6;
jutoutwidth=5;
bottomcover=15;

difference() {
	union() {
		rotate(-90-angle,[0,1,0])
			cube([standx,standy,standthickness]);
		
		translate([-standx/2,0,0])
			cube([standx,standy,standthickness]);
		
		translate([phonethickness+padthickness,0,0])
			rotate(-angle,[0,1,0])
				cube([jutoutwidth,standy,jutoutheight+standthickness]);
	}
	translate([-standx/2,0,-bottomcover])
		cube([standx,standy,bottomcover]);
}