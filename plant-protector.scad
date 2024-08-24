d_outer = 200;
d_inner = 100;
h =2 ; 

theta = 135;
r = d_outer/2;
apothem = r * cos(theta/2); 
sagitta = r - apothem;
translate([0,-(sagitta+apothem),0]) difference(){
translate([0,sagitta,0]) difference(){
  cylinder(h=h, d1=d_outer, d2=d_outer);
  cylinder(h=3*h, d1=d_inner, d2=d_inner,center=true);
}
cube([d_outer,d_outer,3*h],true);
}
