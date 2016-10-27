function [ accel ] = AccelThree(v, w)
%ACCELTWO Retourne l'acceleration en option 3. 
%   Gravity + friction + magnus
    v ;
    w;
    m = 45.9/1000;
    gravity = [0,0,-9.8]';
    magnus = Magnus(v,w)/m;
    friction = Friction(v) /m;
    
    accel = gravity+friction+magnus;

end

