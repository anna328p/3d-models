length=100;
width=25;
toothwidth=3/4;
height=2;
widthscale=5/2;
handlethickness=8;
sidethickness=3;

cube([sidethickness,width,height]);

translate([sidethickness+widthscale-toothwidth,0,0])
	for(i=[0:length/widthscale])
		translate([i*widthscale,0,0])
			cube([toothwidth,width,height]);

cube([length+sidethickness,handlethickness,height]);

translate([length+sidethickness-toothwidth,0,0])
	cube([sidethickness,width,height]);