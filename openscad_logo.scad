$fn=150;
a=2;
h=10;
difference() {
	sphere(4);
	rotate(90,[1,0,0]) cylinder(h,r=a,center=true);
	#rotate(90,[0,1,0]) cylinder(h,r=a,center=true);
	rotate(90,[0,0,1]) cylinder(h,r=a,center=true);
}
