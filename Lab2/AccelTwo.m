function [ accel ] = AccelTwo(v, w)
%ACCELTWO Retourne l'acceleration en option 2. 
%   gravity + friction

    m = 45.9/1000;
    gravity = [0,0,-9.8]';
    
    friction = Friction(v) /m;
    accel = gravity+friction;
end

