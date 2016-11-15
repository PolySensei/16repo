function [ vfBloc, vfaBloc, vfBalle, vfaBalle] = CollisionImpuslsion( normal, viBloc, viBalle, viaBloc, viaBalle, posBloc, posBalle, posCollision, t )
%Balle = A
%Bloc = B
largeurBloc = 0.08;

coefRest = 0.8;
mBloc = 1.2;
mBalle = 0.05;

vri = (viBalle - viBloc) * normal;
vrf = -coefRest*vri;

j = ((1 + coefRest) * vri) / (1/mBloc + 1/mBalle); 



vfBalle = viBalle + normal * j / mBalle;
vfBloc = viBloc - normal * j /mBloc;

rap = posCollision - posBalle;
rbp = posCollision - posBloc;

theta = norm(viaBloc)*t;
axeRot = viaBloc/norm(viaBloc);
q = [cos(theta/2) sin(theta/2)*axeRot(1) sin(theta/2)*axeRot(2) sin(theta/2)*axeRot(3)]

R = [1-2*q(3)*q(3)-2*q(4)*q(4) 2*(q(2)*q(3)-q(4)*q(1)) 2*(q(2)*q(4)+q(3)*q(1)) 
    2*(q(2)*q(3)+q(4)*q(1)) 1-2*q(2)*q(2)-2*q(4)*q(4) 2*(q(3)*q(4)-q(2)*q(1))
    2*(q(2)*q(4)-q(3)*q(1)) 2*(q(3)*q(4)+q(2)*q(1)) 1-2*q(2)*q(2)-2*q(3)*q(3)];

Ibxx = (mBloc / 12 ) * (largeurBloc*largeurbloc*2);
Ic = [Ibxx 0 0; 0 Ibxx 0; 0 0 Ibxx];


%Ga = normal * ( cross(cross(rap, normal), rap) );  
end