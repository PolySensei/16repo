function [ friction ] = Friction(v)
%Friction Get the friction of the ball depending on the speed
%   speed and friction are 3d vectors
    length = norm(v);
    p= 1.2;
    Cv = 0.14;
    A = pi*(21.35/1000)^2;
    friction = - (p*Cv*A/2)*length*v;
end

