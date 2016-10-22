function [ Fm ] = Magnus( v,w)
%MAGNUS Force de magnus
%   Detailed explanation goes here
    p = 1.2;
    Cm = 0.000791*norm(w);
    A = pi*(21.35/1000)^2;
    wCv = cross(w,v);
    wCv = wCv/norm(wCv);
    Fm = p*Cm*A*(norm(v)^2)/2*wCv;

    
end

