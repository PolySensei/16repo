function [ result ] = BallLocation( pos)
%BALLLOCATION Return the ball's location
%  0 = In hole
%  1 = In terrain, not in hole
%  2 = Outside terrain

holeLocation = [142 142 0];
holeSizeSquared = 0.054*0.054;


if pos(1)<0 || pos(2)<0
    result = 2;
elseif pos(1)>150 || pos(2)>150
    result =2;
elseif pos(1)>30 && pos(2)<120
    result =2;
elseif (pos(1) - holeLocation(1))^2 +(pos(1) - holeLocation(1))^2 < holeSizeSquared
    result = 0;
else
    result = 1;

end

