



%{
ti = 0.545454;
vBloc = [-2 -3 5]';
wBloc = [0 0 0]';
vBalle = [5 2 0.642424]';
[Resultat t]= Devoir3( vBloc,wBloc,ti,vBalle )

%}

w = [0 0 0]';
t = 2;
[axes] = rotation(w,t);
posCube = [0 0 0]';
posSphere = [0 0.06 0.06]';

[ result, pointCollision, normalCollision] = CollisionDetection( posCube, axes, posSphere )

