function [ nuIt1 nuIT2 ] = Devoir4( vT1, vT2 )
%DEVOIR3 Summary of this function goes here
%   Detailed explanation goes here
for t = 0:100
    pos1 = pos1i + vitesse1 * t;
    pos2 = pos2i + vitesse2 * t;

    deltaTTransmission2 = (pos2-pos1)/(c-vT1)
        
    deltaTTransmission1 = (pos1-pos2)/(c-vT1)


    u = pos2-pos1;
    dist = norm(u);
    u = u/dist;

    v1 = (c - dot(vitesse2,u))/(c- dot(vitesse1,u))*v2base
    v2 = (c - dot(vitesse2,u))/(c- dot(vitesse1,u))*v1base

    d = dist -10;
    i1 = d /1000*(0.3+0.005*(v1-100))
    i2 = d /1000*(0.3+0.005*(v2-100))


end


end

