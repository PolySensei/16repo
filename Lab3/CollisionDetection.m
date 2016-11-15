function [ result, pointCollision, normalCollision] = CollisionDetection( posCube, posAxes, posSphere )
%COLLISIONDETECTION ret = 1 si il y a une collision mais de pr�cision
%insatisfesante
%   ret = 0 si pas de collision
% ret = 2 si collision et pr�cision satisfesante.
% pointCollision point de collision
% normalCollision, la normale de la collision, de direction cube -> sphere
sphereRadius = 0.02;
result = -1;

%Detection collision Plan cube et sphere
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
        pointCollision = spherePointB;
        normalCollision = normalVec;
        break;
    end
    if( directions(1)~= 1 && directions(2)~= 1)
        result = 0;
        break;
    end
    
end
%Detection collision coin cube et sphere
if result~=0
    axeX = posAxes(1:3)'*0.04;
    axeY = posAxes(7:9)'*0.04;
    axeZ = posAxes(13:15)'*0.04;
    coins = [posCube + axeX + axeY + axeZ posCube + axeX + axeY - axeZ posCube + axeX - axeY + axeZ posCube + axeX - axeY - axeZ posCube - axeX + axeY + axeZ posCube - axeX + axeY - axeZ posCube - axeX - axeY + axeZ posCube - axeX - axeY - axeZ];
    for m = 0:7
        currentCoin = coins(m*3+1:m*3+3)';
        normalVec= currentCoin-posSphere;
        normalVec = normalVec/norm(normalVec);
        pointCenter = normalVec*sphereRadius+posSphere;
        ret = planeSide(pointCenter, normalVec, currentCoin);
        if ret == 0
            result= 2;
            pointCollision = currentCoin;
            normalCollision = -normalVec;
            break;
        end
        directions = [0 0 0];
        for n = 0:7
            currentCoin = coins(n*3+1:n*3+3)';
            ret = planeSide(pointCenter, normalVec, currentCoin);
            directions(ret+2)= 1;
        end
        if(directions(planeSide(pointCenter, normalVec, posSphere)+2)==0)
            result = 0;
            break;
        end
    end
end

%Detection entre ligne intersection entre 2 plan du cube et sphere
if result~=0
    %12 lignes, 4 par axes. 
        coins = [posCube - axeX + axeY + axeZ posCube - axeX + axeY - axeZ posCube - axeX - axeY + axeZ posCube - axeX - axeY - axeZ...
            posCube + axeX - axeY + axeZ posCube + axeX - axeY - axeZ posCube - axeX - axeY - axeZ posCube - axeX - axeY + axeZ...
            posCube + axeX + axeY - axeZ posCube + axeX - axeY - axeZ posCube - axeX + axeY - axeZ posCube - axeX - axeY - axeZ];
        ligne = [axeX axeX axeX axeX axeY axeY axeY axeY axeZ axeZ axeZ axeZ];
        
        for m = 0:11
            coinPosA = coins(m*3+1:m*3+3)';
            ligneA = ligne(m*3+1:m*3+3)';
            ligneA = ligneA/norm(ligneA);
            deltaVec = posSphere - coinPosA ; 
            ligneB = cross(ligneA,deltaVec);
            ligneB = ligneB/norm(ligneB);
            normalVec = cross(ligneA,ligneB);
            normalVec = normalVec/norm(normalVec);
            spherePointA = posSphere +normalVec* sphereRadius;
            spherePointB = posSphere -normalVec* sphereRadius;
            
            ret = planeSide(coinPosA, normalVec, spherePointA);
            ret2 = planeSide(coinPosA, normalVec, spherePointB);
            ret3 = planeSide(coinPosA, normalVec, posCube);
            if(ret==0 && ret2~=ret3)
                result=2;
                pointCollision = spherePointA;
                normalCollision = -normalVec;
                break;
            elseif(ret2==0 && ret~=ret3)
                result=2;
                pointCollision = spherePointA;
                normalCollision = -normalVec;
                break;
            elseif(ret2==ret && ret~=ret3)
                result=0;
                break;
            end
        end
end



if(result == -1)
    result = 1;
end
if(result~=2)
    pointCollision = 0;
    normalCollision= 0;
end
end

