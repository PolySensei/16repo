function [ deltaT, pos2E ] = OriginPointDetection( pos1, pos2, vitesse2)
%ORIGINPOINTDETECTION Summary of this function goes here
%   Detailed explanation goes here

v = norm(vitesse2);    
temperaturAir = 10;
c = (331.3 + 0.606 *temperaturAir);
if(v~=0)
    unitaire2 = vitesse2/v;
    a2 = unitaire2(2) / unitaire2(1);
    b2 = pos2(2)- pos2(1)*a2;

    unitaire1 = [-unitaire2(2) unitaire2(1)];
    if unitaire1(1) ~= 0
        a1 = unitaire1(2) / unitaire1(1);
        b1 = pos1(2)- pos1(1)*a1;

        x = (b2-b1)/(a1-a2);
        y = a1*x+b1;

        aPoint = [x y]';
    else
        aPoint= [pos1(1) pos2(2)]';
    end

    a = norm(pos1-aPoint);
    b = norm(pos2-aPoint);

    aCube = v^2/c^2 -1;
    bCube = 2*b*v/c^2;
    cCube = a^2/c^2+b^2/c^2;
    
    x = roots([aCube bCube cCube]);
    for i = 1:size(x)
        if(x(i)>0)
            deltaT = x(i);
            break;
        end
    end
    deltaT = -deltaT;
    pos2E = pos2 + vitesse2*deltaT;

else
    pos2E = pos2;
    deltaT = -norm(pos2E - pos1)/c;
end

end

