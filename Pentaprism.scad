l = 6;
d = l/cos(22.5);
y = d*cos(22.5);
z = d*sin(22.5);

echo(d);
echo(y);
echo(z);
 
  module roofedPentaPrism(l, y, z){    
     polyhedron(//pt 0        1        2        3        4          5            6            7            8
             points=[[0,0,0], [l,0,0], [l,l,0], [0,l,0], [l/2,0,0.68*l], [l/2, 1.2*y, 0.9*(l+z)], [], [0, l+z, 2*y/3], [l, l+z, 2*y/3]],
             faces=[[0,1,2,3], [0,1,4], [0,3,7], [1,2,8], [3,2,8,7], [1,4,5,8], [0,4,5,7], [7,8,5]]
             );
     }    
  module pentaPrism(l, y, z){    
     polyhedron(//pt 0        1        2        3        4        5        6            7            8            9
             points=[[0,0,0], [l,0,0], [l,l,0], [0,l,0], [l,0,l], [0,0,l], [0, y, l+z], [l, y, l+z], [0, l+z, y], [l, l+z, y]],
             faces=[[0,1,2,3], [0,1,4,5], [0,3,8,6,5], [1,2,9,7,4], [7,9,8,6], [5,4,7,6], [3, 2, 9, 8]]
             );
     }
     
  module roofedPentaPrismFinder(l, y, z){    
     polyhedron(//pt 0        1        2        3        4               5                        6   7                8
             points=[[0,0,0], [l,0,0], [l,l,0], [0,l,0], [l/2,0,0.68*l], [l/2, 1.2*y, 0.9*(l+z)], [], [0, l+z, 2*y/3], [l, l+z, 2*y/3]],
             faces=[[0,3,7], [1,2,8], [3,2,8,7], [1,4,5,8], [0,4,5,7], [7,8,5]]
             );
     }    
      
  roofedPentaPrism(l,y,z);