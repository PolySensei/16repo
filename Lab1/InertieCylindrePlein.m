function [ Ic ] = InertieCylindrePlein( m, r, l )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

Icz = m*r*r/2;
Icx = m*r*r/4 + m*l*l/12;

Ic = [Icx 0 0; 0 Icx 0; 0 0 Icz];

end

