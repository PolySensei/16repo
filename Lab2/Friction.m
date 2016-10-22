function [ friction ] = Friction(v)
%Friction Get the friction of the ball depending on the speed
%   speed and friction are 3d vectors
    length = (v(1)*v(1)+v(2)*v(2)+v(3)*v(3))^0.5;
    p= 1.2;
    Cv = 0.14;
    A = pi*(21.35/1000)^2;
    friction = - (p*Cv*A/2)*length*v;
end

