function [ coup,vbf,t,x,y,z ] = coup( option,xy0,vb0,wb0)
%coup Summary of this function goes here
%   Detailed explanation goes here

gravity = [0 0 -8.8]';


    function a = accel(t)
        if option ==0
            a = gravity;
        end
    end


    function v = speed(a, v0, t)
        v = v0+t*a;
    end

    function p = position(a, v0, p0, t)
        p = p0 + v0*t + a/2*t^2;
    end

if option == 0
    speedZInitial = vb0(3);
    acceleration = accel(0);
    tTotal = 2*abs(speedZInitial /acceleration(3));
    currentT = 0;
    p0 = [xy0' 0]';
    
    t=[];
    x=[];
    y=[];
    z=[];
    
    while currentT<tTotal
       currentPos = position(acceleration, vb0, p0, currentT);
       t= [t currentT];
       x = [x currentPos(1)];
       y = [y currentPos(2)];
       z = [z currentPos(3)];

       if BallLocation(currentPos)==2
           vbf = speed(acceleration,vb0,currentT);
           coup = 2;
           return;
       end
       currentT = currentT+0.02;
    end
    
    currentPos = position(acceleration, vb0, p0, tTotal);
    t = [t tTotal];
    x = [x currentPos(1)];
    y = [y currentPos(2)];
    z = [z currentPos(3)];
    coup = BallLocation(currentPos);
    vbf = speed(acceleration,vb0,tTotal);


end
end

