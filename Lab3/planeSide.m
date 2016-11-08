
function [ ret ] = planeSide( pos, normalVec, dot)
%PLANESIDE Summary of this function goes here
%   Detailed explanation goes here
   % d = -(normalVec(1)*pos(1))-(normalVec(2)*pos(2))-(normalVec(3)*pos(3));
   % result  = normalVec(1)*dot(1)+normalVec(2)*dot(2)+normalVec(3)*dot(3)+d;
   % result = round(result,4);
   precision = 3;
   
   deltaVec = dot-pos;
   deltaVecProj = (normalVec(1)*deltaVec(1)+(normalVec(2)*deltaVec(2))+(normalVec(3)*deltaVec(3)))*normalVec;
   length =deltaVecProj(1)*deltaVecProj(1)+deltaVecProj(2)*deltaVecProj(2)+deltaVecProj(3)*deltaVecProj(3);
   length = round(length,precision*2);
   result = deltaVecProj(1)*normalVec(1)+deltaVecProj(2)*normalVec(2)+deltaVecProj(3)*normalVec(3);
    if(length==0)
        ret = length;
    elseif(result >0)
        ret=1;
    else
        ret = -1;
    end

end

