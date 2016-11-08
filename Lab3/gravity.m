function [ posf ] = gravity( posi, t, vi )
%GRAVITY Summary of this function goes here
%   Detailed explanation goes here
    posf = posi + [0 0 -9.8]'/2 * t*t + vi * t;
end

