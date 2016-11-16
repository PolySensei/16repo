function [ posf vf] = gravity( posi, t, vi )
%GRAVITY Summary of this function goes here
%   Detailed explanation goes here
    g = [0 0 -9.8]';
    posf = posi + g/2 * t*t + vi * t;
    vf = vi + g*t;
end

