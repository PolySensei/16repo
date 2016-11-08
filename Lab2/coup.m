function [ coup,vbf,t,x,y,z ] = coup( option ,xy0,vb0,wb0)
%coup Main function of the assignment

r = 21.35/1000;
gravity = [0 0 -9.8]';

%speed for option 1
    function v = speed(a, v0, t)
        v = v0+t*a;
    end
%position for option 1
    function p = position(a, v0, p0, t)
        p = p0 + v0*t + a/2*t^2;
    end

if option == 1
    speedZInitial = vb0(3);
    acceleration = gravity;
    tTotal = 2*abs(speedZInitial /acceleration(3));
    currentT = 0;
    p0 = [xy0' r]';
    
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
       currentT = currentT+0.0002;
    end
    
    currentPos = position(acceleration, vb0, p0, tTotal);
    t = [t tTotal];
    x = [x currentPos(1)];
    y = [y currentPos(2)];
    z = [z currentPos(3)];
    coup = BallLocation(currentPos);
    vbf = speed(acceleration,vb0,tTotal);
else 
    
    %initialize values
    delta = 0.000005;
        
    currentPos = [xy0' r]';
    currentSpeed = vb0;
    currentT = 0;

    t=[currentT];
    x=[currentPos(1)];
    y=[currentPos(2)];
    z=[currentPos(3)];
    lastAdd = 0;
    %while not touching ground and in terrain
    while currentPos(3)>=r && BallLocation(currentPos)~= 2
       %adds an iteration.
      currentT = currentT+delta;
	  
	  %if it's been 5 ms, adds a value to trace the trajectory
      if(currentT-lastAdd>0.005)  
        lastAdd = currentT;
        t=[t currentT];
        x=[x currentPos(1)];
        y=[y currentPos(2)];
        z=[z currentPos(3)];
      end

	  %depending on the option, the acceleration function isn't the same.
       if(option == 2)
            currentSpeed = RungeKutta ( currentSpeed, wb0 , delta , @AccelTwo);
       else
            currentSpeed = RungeKutta ( currentSpeed, wb0 , delta , @AccelThree);
       end

       currentPos = currentPos + currentSpeed*delta; 
       
    end
	%if the ball did touch the ground. We change currentPos to the last the exact moment it did. 
    if BallLocation(currentPos)~= 2
      lastDelta = -(z(end)-r)/currentSpeed(3);
      currentPos = [x(end) y(end) z(end)]' + currentSpeed*lastDelta; 
      currentT = currentT-delta+lastDelta;
    end
    
    t=[t currentT];
    x=[x currentPos(1)];
    y=[y currentPos(2)];
    z=[z currentPos(3)];
    
    coup = BallLocation(currentPos);
    vbf = currentSpeed;
    
end
end

