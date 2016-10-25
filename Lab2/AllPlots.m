%Definitions 0,0,0 is the right left corner of terrain all measurment of
%distance is in meters, of speed in m/s of angular momentum in rad/s



xy01 =[ 13.10857 142]';
vb01 = [30 0 21.052266]';
wb01 = [0 -450 0]';

xy02 =[ 15 120]';
vb02 = [25.3132 20.3132 22.052266]';
wb02 = [170 -170 -420]';

xy03 =[ 13.6 130.766]';
vb03 = [29.885 2.6146 21.052266]';
wb03 = [33.16095 -379.068156 0]';

xy04 =[ 13.3 130]';
vb04 = [29.885 2.6146 21.052266]';
wb04 = [0 -100 -100]';

[ coup11,vbf11,t,x1,y1,z1 ] = coup(1,xy01,vb01,wb01);
coup11
tf=t(end)
xf=x1(end)
yf=y1(end)
zf=z1(end)
vbf11

[ coup12,vbf12,t,x2,y2,z2 ] = coup(2,xy01,vb01,wb01);
coup12
tf=t(end)
xf=x2(end)
yf=y2(end)
zf=z2(end)
vbf12

[ coup13,vbf13,t,x3,y3,z3 ] = coup(3,xy01,vb01,wb01);
PlotFigure(x1,y1,z1, x2, y2, z2, x3, y3, z3, 'Premier coup');
coup13
tf=t(end)
xf=x3(end)
yf=y3(end)
zf=z3(end)
vbf13

[ coup21,vbf21,t,x1,y1,z1 ] = coup(1,xy02,vb02,wb02);
coup21
tf=t(end)
xf=x1(end)
yf=y1(end)
zf=z1(end)
vbf21

[ coup22,vbf22,t,x2,y2,z2 ] = coup(2,xy02,vb02,wb02);
coup22
tf=t(end)
xf=x2(end)
yf=y2(end)
zf=z2(end)
vbf22

[ coup23,vbf23,t,x3,y3,z3 ] = coup(3,xy02,vb02,wb02);
PlotFigure(x1,y1,z1, x2, y2, z2, x3, y3, z3, 'Deuxième coup');
coup23
tf=t(end)
xf=x3(end)
yf=y3(end)
zf=z3(end)
vbf23

[ coup31,vbf31,t,x1,y1,z1 ] = coup(1,xy03,vb03,wb03);
coup31
tf=t(end)
xf=x1(end)
yf=y1(end)
zf=z1(end)
vbf31

[ coup32,vbf32,t,x2,y2,z2 ] = coup(2,xy03,vb03,wb03);
coup32
tf=t(end)
xf=x2(end)
yf=y2(end)
zf=z2(end)
vbf32

[ coup33,vbf33,t,x3,y3,z3 ] = coup(3,xy03,vb03,wb03);
PlotFigure(x1,y1,z1, x2, y2, z2, x3, y3, z3, 'Troisième coup');
coup33
tf=t(end)
xf=x3(end)
yf=y3(end)
zf=z3(end)
vbf33

[ coup41,vbf41,t,x1,y1,z1 ] = coup(1,xy04,vb04,wb04);
coup41
tf=t(end)
xf=x1(end)
yf=y1(end)
zf=z1(end)
vbf41

[ coup42,vbf42,t,x2,y2,z2 ] = coup(2,xy04,vb04,wb04);
coup42
tf=t(end)
xf=x2(end)
yf=y2(end)
zf=z2(end)
vbf42

[ coup43,vbf43,t,x3,y3,z3 ] = coup(3,xy04,vb04,wb04);
PlotFigure(x1,y1,z1, x2, y2, z2, x3, y3, z3, 'Quatrième coup');
coup43
tf=t(end)
xf=x3(end)
yf=y3(end)
zf=z3(end)
vbf43

