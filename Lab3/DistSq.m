function [ dist ] = DistSq( a, b)
%DISTSQRT Summary of this function goes here
%   Detailed explanation goes here
vec = b-a;

dist = vec(1)*vec(1)+vec(2)*vec(2) + vec(3) * vec(3);


end

