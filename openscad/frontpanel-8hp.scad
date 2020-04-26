// Based on Parametric Eurorack Panel by Jonathan Bedrava
// https://www.thingiverse.com/thing:2055716

panelHp = 9;
holeWidth = 6.4;
panelThickness = 2;
panelOuterHeight = 128.5;
hp = 5.08;
mountHoleDiameter = 3.2;

module eurorackPanel()
{
    offset = 7.5 - holeWidth + (holeWidth/2);
    
    difference()
    {
        cube([hp*panelHp,panelOuterHeight,panelThickness]);
        
        translate([offset, panelOuterHeight-3.0, 0])
            eurorackMountHole();
        translate([offset, 3.0, 0])
            eurorackMountHole();
        if (panelHp > 4) {
            translate([offset + ((panelHp-2)*hp), panelOuterHeight-3.0, 0])
                eurorackMountHole();
            translate([offset + ((panelHp-2)*hp), 3.0, 0])
                eurorackMountHole();
        }
    }
}

module eurorackMountHole()
{
    mountHoleRad = mountHoleDiameter/2;
    mountHoleDepth = panelThickness+2;
    
    hwCubeWidth = holeWidth-mountHoleDiameter;
    if(hwCubeWidth<0)
    {
        hwCubeWidth=0;
    }
    
    translate([0,0,-1])
    union()
    {
        cylinder(r=mountHoleRad, h=mountHoleDepth, $fn=20);
        translate([0,-mountHoleRad,0])
            cube([hwCubeWidth, mountHoleDiameter, mountHoleDepth]);
        translate([hwCubeWidth,0,0])
            cylinder(r=mountHoleRad, h=mountHoleDepth, $fn=20);
    }
}

//

w = hp*panelHp;

module Hole(x, y, h) {
    translate([x,y,-1]) cylinder(d=16, h=h, $fn=72);
}

module Led(x, y, h) {
    translate([x, y,-1]) cylinder(d=3.1, h=h, $fn=18); 
//    translate([x, y,-1]) cylinder(d=0.01, h=h, $fn=1); 
}

module Row(y, h) {
    Hole((w/2)-11, y, h);
    Hole((w/2)+11, y, h);
    Led((w/2)-11+8, y+8, h);
    Led((w/2)+11-8, y+8, h);
    
    // Uncomment for 36HP x 32 ports
    //Hole((w/2)-33, y, h);
    //Hole((w/2)+33, y, h);
    //Led((w/2)-11+8-66, y+8, h);
    //Led((w/2)+11-8-66, y+8, h);
    //Hole((w/2)-55, y, h);
    //Hole((w/2)+55, y, h);
    //Led((w/2)-11+8+22, y+8, h);
    //Led((w/2)+11-8+22, y+8, h);
    //Hole((w/2)-77, y, h);
    //Hole((w/2)+77, y, h);
    //Led((w/2)-11+8+66, y+8, h);
    //Led((w/2)+11-8+66, y+8, h);
}

echo("centerdiff: ", ((w/2)+11) - ((w/2)-11));

projection() translate([0,0,0]) rotate([0,0,0])

difference() {
    eurorackPanel();
    Row((panelOuterHeight/2)-33, panelThickness+2);
    Row((panelOuterHeight/2)-11, panelThickness+2);
    Row((panelOuterHeight/2)+11, panelThickness+2);
    Row((panelOuterHeight/2)+33, panelThickness+2);
    
    //translate([(w/2)-11, (panelOuterHeight/2)+22, -1]) cylinder(d=3.2, h=panelThickness+2, $fn=18);
    //translate([(w/2)+11, (panelOuterHeight/2)+22, -1]) cylinder(d=3.2, h=panelThickness+2, $fn=18);
    //translate([(w/2)-11, (panelOuterHeight/2)-22, -1]) cylinder(d=3.2, h=panelThickness+2, $fn=18);
    //translate([(w/2)+11, (panelOuterHeight/2)-22, -1]) cylinder(d=3.2, h=panelThickness+2, $fn=18);
    translate([(w/2)-11, (panelOuterHeight/2)+22, -1]) cylinder(d=0.01, h=panelThickness+2, $fn=1);
    translate([(w/2)+11, (panelOuterHeight/2)+22, -1]) cylinder(d=0.01, h=panelThickness+2, $fn=1);
    translate([(w/2)-11, (panelOuterHeight/2)-22, -1]) cylinder(d=0.01, h=panelThickness+2, $fn=1);
    translate([(w/2)+11, (panelOuterHeight/2)-22, -1]) cylinder(d=0.01, h=panelThickness+2, $fn=1);
}
