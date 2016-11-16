function [ vfBloc, vfaBloc, vfBalle, vfaBalle] = CollisionImpulsion( normal, viBloc, viBalle, viaBloc, posBloc, posBalle, posCollision, t )
%Balle = A
%Bloc = B
largeurBloc = 0.08;
rayonSphere = 0.02;

coefRest = 0.8;
mBloc = 1.2;
mBalle = 0.05;

rap = posCollision - posBalle;
rbp = posCollision - posBloc;

%vap = viBalle + cross(viaBalle, rap);
vap = [0 0 0]';
vbp = viBloc + cross(viaBloc, rbp);


vri = dot(normal, (vap - vbp));
vrf = -coefRest*vri;

j = -((1 + coefRest) * vri) / (1/mBloc + 1/mBalle); 


vfBalle = viBalle + normal * j / mBalle;
vfBloc = viBloc - normal * j /mBloc;


%Momemtum angulaire
theta = norm(viaBloc)*t;
if(norm(viaBloc) ~= 0) 
    axeRot = viaBloc/norm(viaBloc);
    q = [cos(theta/2) sin(theta/2)*axeRot(1) sin(theta/2)*axeRot(2) sin(theta/2)*axeRot(3)];

R = [1-2*q(3)*q(3)-2*q(4)*q(4) 2*(q(2)*q(3)-q(4)*q(1)) 2*(q(2)*q(4)+q(3)*q(1)) 
    2*(q(2)*q(3)+q(4)*q(1)) 1-2*q(2)*q(2)-2*q(4)*q(4) 2*(q(3)*q(4)-q(2)*q(1))
    2*(q(2)*q(4)-q(3)*q(1)) 2*(q(3)*q(4)+q(2)*q(1)) 1-2*q(2)*q(2)-2*q(3)*q(3)];
else
    R = eye(3);
end

Ibxx = (mBloc / 12 ) * (largeurBloc*largeurBloc*2);
Ic = [Ibxx 0 0; 0 Ibxx 0; 0 0 Ibxx];
I = R*Ic*R';
IB = inv(I);

Iaxx = (2* mBalle / 5) * rayonSphere * rayonSphere;
Ic = [Iaxx 0 0; 0 Iaxx 0; 0 0 Iaxx];
IA = inv(Ic);


Ga = dot(normal, ( IA * cross(cross(rap, normal), rap) ));
Gb = dot(normal, ( IB * cross(cross(rbp, normal), rbp) ));

a = 1 / ( (1/mBalle) + (1/mBloc) + Ga + Gb);
j = -a * (1+ coefRest) * vri;

J = normal * j;

vfaBalle = IA * cross(rap, J);
vfaBloc = viaBloc - IB * cross(rbp, J);

end