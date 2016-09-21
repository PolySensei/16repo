function [ wsquiggly ] = wMat( w )
%UNTITLED12 Summary of this function goes here
%   Detailed explanation goes here

wsquiggly = [0 -w(3) w(2); w(3) 0 -w(1); -w(2) w(1) 0];

end

