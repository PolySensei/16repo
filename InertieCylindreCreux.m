function [ Ic ] = InertieCylindreCreux( m, r, l )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

Icz = m*r*r;
Icx = m*r*r/2 + m*l*l/12;

Ic = [Icx 0 0; 0 Icx 0; 0 0 Icz];

end

