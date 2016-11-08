function [ sommetsF ] = rotation( sommetI, w, t)
%ROTATION Summary of this function goes here
%   Detailed explanation goes here

vref =[1 1 1];
theta = pi /2;
urot =[0 0 1];
vrot = QARotation ( vref , theta , urot );

end

