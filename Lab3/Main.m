



%{
ti = 0.545454;
vBloc = [-2 -3 5]';
wBloc = [0 0 0]';
vBalle = [5 2 0.642424]';
[Resultat x y z xb yb zb c]= Devoir3( vBloc,wBloc,ti,vBalle );
scatter3(x,y,z,0.5,'r');
hold on
scatter3(xb,yb,zb,0.5,'b');
%}

w=[0 0 0]';
t = 1;
posCube = [0 0 0]'
[ posCoin, posAxes] = rotation(  w, t)
posSphere = [0.06 0 0]';
[ result ] = CollisionDetection( posCube, posAxes, posSphere )





