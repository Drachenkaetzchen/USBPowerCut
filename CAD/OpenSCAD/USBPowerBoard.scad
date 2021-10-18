$fn=30;

holeDiameter = 4.7;
holeDistance = 23;
holeBorder = 6;

holes=[
    [4.2,4.2],
    [4.2,26.2],
    [28.259,26.2],
    [28.702,4.2]
    ];


module main () {
translate([-99.2 - 56.9/2,-109.3,0]) {
import("pcb_din_clip_x3.stl");
}

cubeWidth = holeDistance + holeDiameter + holeBorder;
cubeHeight = holeDiameter + holeBorder-3;

translate([-cubeWidth/2,-cubeHeight,0]) {
cube([cubeWidth,cubeHeight,4.6]);
}
translate([-cubeWidth/2,-cubeHeight+19.7+holeBorder,0]) {
cube([cubeWidth,cubeHeight,4.6]);
}
}


module holes () {

    

translate([-16.5,-6.4,0]) {
rotate([0,0,0]) {
for (a = [ 0 : len(holes) - 1 ]) 
{
    translate([holes[a][0],holes[a][1],0]) {
    cylinder(d=holeDiameter,h=5);
    }
}
}
}
}

difference() {
    main();
    holes();
}