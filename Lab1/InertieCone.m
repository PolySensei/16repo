function [ Ic ] = InertieCone(m, r, h )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here

Icx = (12*r*r + 3*h*h)/80;
Icz = 3*r*r/10;

Ic = m*[Icx 0 0; 0 Icx 0; 0 0 Icz];

end

