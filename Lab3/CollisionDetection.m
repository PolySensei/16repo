function [ result ] = CollisionDetection( posCube, posAxes, posSphere )
%COLLISIONDETECTION ret = 1 si il y a une collision mais de précision
%insatisfesante
%   ret = 0 si pas de collision
% ret = 2 si collision et précision satisfesante.
diffVecNormalizer = (posCube-posSphere)/norm(posCube-posSphere);
circlePosClose = posSphere;
sphereRadius = 0.02;
result = -1;
for m = 0:5
    normalVec= posAxes(m*3+1:m*3+3)';
    pointCenter = normalVec*0.04+posCube;
    spherePointA = posSphere +normalVec* sphereRadius;
    spherePointB = posSphere -normalVec* sphereRadius;
    directions = [0 0 0];
    
    ret = planeSide(pointCenter, normalVec, spherePointA);
    directions(ret+2)= 1;
    ret2 = planeSide(pointCenter, normalVec, spherePointB);
    directions(ret2+2)= 1;
    if(ret2==0 && ret==1)
        result=2;
        break;
    end
    ret = planeSide(pointCenter, normalVec, posCube);
    if( directions(ret+2)~= 1)
        result = 0;
        break;
    end
    
end
if(result == -1)
    result = 1;

end

