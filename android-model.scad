color("lightgreen") {
	// body
	resize(newsize=[15, 18, 15])
		cylinder(h=20, r=10, $fn=100);
	// head
	translate([0, 0, -14]) {
		difference() {
			translate([0, 0, 30])
				resize(newsize=[15, 18, 18])
					sphere(r=20, $fn=100);
			
			translate([0, 0, 20])
				resize(newsize=[15, 18, 10])
					cylinder(h=1, r=10, $fn=100);
		}
	}

	// arms
	translate([0, 11, 5]) {
		sphere(r=1.5, $fn=100);
		translate([0, 0, 8]) {
			sphere(r=1.5, $fn=100);
		}
		cylinder(h=8, r=1.5, $fn=100);
	}
	mirror([0, 1, 0]) {
		translate([0, 11, 5]) {
			sphere(r=1.5, $fn=100);
			translate([0, 0, 8]) {
				sphere(r=1.5, $fn=100);
			}
			cylinder(h=8, r=1.5, $fn=100);
		}
	}

	// antennas
	translate([0, -5, 22]) {
		rotate(a=30, v=[1, 0, 0]) {
			translate([0, 0, 3.5]) {
				sphere(r=0.4, $fn=100);
			}
			cylinder(h=3.5, r=0.4, $fn=100);	
		}
	}
	mirror([0, 1, 0]) {
		translate([0, -5, 22]) {
				rotate(a=30, v=[1, 0, 0]) {
					translate([0, 0, 3.5]) {
						sphere(r=0.4, $fn=100);
					}
					cylinder(h=3.5, r=0.4, $fn=100);	
				}
		}
	}
}

// legs
translate([0, -3.5, -4]) {
	cylinder(h=4, r=1.5, $fn=100);
	translate([0, 0, -0.1]) {
		sphere(r=1.5, $fn=100);
	}
}

mirror([0, 1, 0]) {
	translate([0, -3.5, -4]) {
		cylinder(h=4, r=1.5, $fn=100);
		translate([0, 0, -0.1]) {
			sphere(r=1.5, $fn=100);
		}
	}
}

