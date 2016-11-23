function [ nuIt1, nuIt2 ] = Devoir4( vT1, vT2 )
%DEVOIR3 Summary of this function goes here
%   Detailed explanation goes here

vT1ms = vT1*1000/3600;
vT2ms = vT2*1000/3600;
pos1i = [0 0]';
pos2i = [3000 2000]';
dir1 = [1 0]';
dir2 = [-1/sqrt(2) -1/sqrt(2)]';
vitesse1 = vT1ms *dir1;
vitesse2 = vT2ms *dir2;
temperaturAir = 10;
c = (331.3 + 0.606 *temperaturAir);
v1base = 120;
v2base = 170;
nuIt1 = zeros(101,2);
nuIt2 = zeros(101,2);

for t = 0:100;

    pos1 = pos1i + vitesse1*t;
    pos2 = pos2i + vitesse2*t;

    [deltaT1, pos2E] = OriginPointDetection( pos1, pos2, vitesse2);
    [deltaT2, pos1E] = OriginPointDetection( pos2, pos1, vitesse1);
    
    if((deltaT1 + t< 0 || deltaT1 + t> 80))
        v1 = 0;
        I1 = 0;
    else
        u = pos2E-pos1;
        dist = norm(u);
        u = u/dist;
        v1 = (c - dot(vitesse2,u))/(c- dot(vitesse1,u))*v2base;
        d = dist -10;
        vTrajet = (c - dot(vitesse2,u))/(c)*v2base;
        I1 = 100- 20 * log10( dist/10);
        I1 = I1 - (d /1000)*(0.3+0.005*(vTrajet-100));
    end
    
    if((deltaT2 + t< 0 || deltaT2 + t> 80))
        v2 = 0;
        I2 = 0;
    else
        u = pos1E-pos2;
        dist = norm(u);
        u = u/dist;
        d = dist -10;
        v2 = (c- dot(vitesse1,u))/(c - dot(vitesse2,u))*v1base;
        vTrajet = (c - dot(vitesse1,u))/(c)*v2base;
        I2 = 100- 20 * log10( dist/10);
        I2 = I2 - (d /1000)*(0.3+0.005*(vTrajet-100));

    end
    nuIt1(t+1, 1) = v1;
    nuIt1(t+1, 2) = I1;
    nuIt2(t+1, 1) = v2;
    nuIt2(t+1, 2) = I2;
    
end

end

