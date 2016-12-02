// set thickness of part
thickness = 3;
// set width of part (to lay on chassis)
width = 20;
// set length of stub to attach cylinder holder to
stub_length = 30;

// rotate for printing
rotate([0, 90, 0]) {
	translate([-width/2, 0, 0]) {
		// // Draw spool mount cylinder
		// translate([0, 0, 45])
		// cylinder(90, 16.4, 16.4, true);
		//
		// // Draw spool mount stop
		// translate([0, 3, 88.4])
		// cube([32.6, 10, thickness], true);
		// translate([0, 6, 88.4])
		// cylinder(thickness, 16.4, 16.4, true);

		// // Draw spool mount cylinder
		translate([0, 0, stub_length / 2])
		cylinder(stub_length, sqrt(width) * 2 + 1.5, sqrt(width) * 2 + 1.5, true);

		// draw long edge of holder
		translate([0, 40, thickness/2])
		cube([width, 30+56, thickness], true);

		// draw bar to lay horizontally on top of chassis
		translate([0, 81.5, -32])
		cube([width, thickness, 68], true);

		// draw bar to hang vertically down the inside of the chassis
		translate([0, 71.5, -64.5])
		cube([width, 15+thickness, thickness], true);
	}
}