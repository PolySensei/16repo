
vT1 = 0;
vT2 = 300*1000/3600;
pos1i = [0 0]';
pos2i = [3000 2000]';
dir1 = [1 0]';
dir2 = [-1/sqrt(2) -1/sqrt(2)]';
vitesse1 = vT1 *dir1
vitesse2 = vT2 *dir2
temperaturAir = 10;
c = (331.3 + 0.606 *temperaturAir);

v1base = 120;
v2base = 170;

a = sqrt(500^2*2)
b = norm(pos2i-[500 -500]')
v = vT2
aCube = v^2/c^2 -1
bCube = 2*b*v/c^2
cCube = a^2/c^2+b^2/c^2
x = roots([aCube bCube cCube])

atan((b+v*x(1))/a) - acos( a/ (c * x(1)))
a/(c*x(1)) - 1/(1+((b+v*x(1))/a)^2)^0.5

aCube*x(1)^2+bCube*x(1)+cCube

tes = [-500 500]'- dir2* b
test = [-500 500]- [-1/sqrt(2) -1/sqrt(2)] * (b+x(1)*v)
test2 = norm(test)
test3 = test2/c


