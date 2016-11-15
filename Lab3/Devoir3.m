function [Resultat t]= Devoir3( vbloci,avbloci,tl,vballei )
%DEVOIR3 Fonction principale du devoir
%   Detailed explanation goes here
  accel = [0 0 -9.8]';
  arretCube = 0.08;
  
  cubePosInit = [3 3 1]';
  cubeSpeedInit = vbloci;
  cubeMaxRadius = ((arretCube/2)*(arretCube/2)+(arretCube/2)*(arretCube/2)+(arretCube/2)*(arretCube/2))^0.5;
  
  sphereRadius = 0.02;
  spherePosI= [0 0 2]';
  sphereSpeedI= vballei;
  tI = tl;
  
  maxRadiusTotal = cubeMaxRadius + sphereRadius;
  
  deltaT = 0.002;
  currentT = tI;
  withinMaxRadius = 0;
  firstHit = 0;
  Resultat = 0;
  
    t =[];
  while deltaT > 0.0000001
      t=[t currentT];
      hit = 0;
      [spherePos] = gravity(spherePosI, currentT-tI, sphereSpeedI);
      [cubePos] = gravity(cubePosInit, currentT, cubeSpeedInit);
      
      if(withinMaxRadius == 0)
          [distsq]  = DistSq( spherePos, cubePos);
          if(distsq < maxRadiusTotal*maxRadiusTotal)
              withinMaxRadius = 1;
          end
      else
          [axesPos] = rotation(  avbloci, currentT);
          [ ret ] = CollisionDetection( cubePos, axesPos, spherePos );
          if(ret == 1)
              hit = 1;
              firstHit = 1;
          elseif (ret == 2)
              break;
          end
              
      end
      
      if(spherePos(3)<= 0 )
          Resultat= -1;
          break;
      elseif(cubePos(3)<=0)
          Resultat =1;
          break;
      end
      
      if(firstHit == 1)
          deltaT = deltaT/2;
      end
      
      if(hit == 0)
          currentT = currentT + deltaT;
      else
          currentT = currentT - deltaT;
      end
  end
  
  %resolution collision
 

end

