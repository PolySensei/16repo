function [ result ] = CollisionDetectionGround( posCube, posAxes)
%COLLISIONDETECTIONGROUND ret = 1 si il y a une collision avec le sol
% ret = 0 si pas de collision
result = 0;

%Detection collision coin cube et sol

    axeX = posAxes(1:3)'*0.04;
    axeY = posAxes(7:9)'*0.04;
    axeZ = posAxes(13:15)'*0.04;
    coins = [posCube + axeX + axeY + axeZ posCube + axeX + axeY - axeZ posCube + axeX - axeY + axeZ posCube + axeX - axeY - axeZ posCube - axeX + axeY + axeZ posCube - axeX + axeY - axeZ posCube - axeX - axeY + axeZ posCube - axeX - axeY - axeZ];
    for m = 0:7
        currentCoin = coins(m*3+1:m*3+3)';
        if(currentCoin(3) <=0)
            result=1;
            break;
        end
    end

end

