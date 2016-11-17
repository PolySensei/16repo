function [Resultat blocf ballef Post]= Devoir3( vbloci,avbloci,tl,vballei )
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
  currentT = 0;
  withinMaxRadius = 0;
  firstHit = 0;
  Resultat = 0;
  Post = [0 3 3 1 0 0 2];
    
    
  %pour recolter les positions du bloc avant le lance de la balle
  spherePos = [0 0 2]';
  while currentT < tI
      hit = 0;

      [cubePos cubeV] = gravity(cubePosInit, currentT, cubeSpeedInit);
      
      
      Post = vertcat(Post,  [currentT cubePos' spherePos']);
      
      currentT = currentT + deltaT;
  end
  
  currentT = tI;  
  while deltaT > 0.0000001
      hit = 0;
      [spherePos sphereV] = gravity(spherePosI, currentT-tI, sphereSpeedI);
      [cubePos cubeV] = gravity(cubePosInit, currentT, cubeSpeedInit);
      
      
      if(withinMaxRadius == 0)
          [distsq]  = DistSq( spherePos, cubePos);
          if(distsq < maxRadiusTotal*maxRadiusTotal)
              withinMaxRadius = 1;
          end
      else
          [axesPos] = rotation(  avbloci, currentT);
          [ ret, pointCollision, normalCollision] = CollisionDetection( cubePos, axesPos, spherePos );
          if(ret == 1)
              hit = 1;
              firstHit = 1;
          elseif (ret == 2)
              break;
          end
              
      end
      
      [axesPos] = rotation(  avbloci, currentT);
      if(spherePos(3)<= sphereRadius )
          Resultat= -1;
          firstHit = 1;
          hit = 1;
          %break;
      elseif(CollisionDetectionGround( cubePos, axesPos) ==1)
          Resultat =1;
          firstHit = 1;
          hit = 1;
          %break;
      end
      
      if(firstHit == 1)
          deltaT = deltaT/2;
      end
      
      if(hit == 0)
          Post = vertcat(Post,  [currentT cubePos' spherePos']);
          currentT = currentT + deltaT;
      else
          currentT = currentT - deltaT;
      end
  end
  Post = vertcat(Post,  [currentT cubePos' spherePos']);
  %resolution collision
  if(Resultat == 0)
     [ vfBloc, vfaBloc, vfBalle, vfaBalle] = CollisionImpulsion( normalCollision, cubeV, sphereV, avbloci, cubePos, spherePos, pointCollision, currentT );
     blocf = vertcat([cubeV' avbloci'], [vfBloc' vfaBloc']);
     ballef = vertcat([sphereV' 0 0 0], [vfBalle' vfaBalle']);
 else
     blocf = vertcat([cubeV' avbloci'], [cubeV' avbloci']);
     ballef = vertcat([sphereV' 0 0 0], [sphereV' 0 0 0]);
    
 end
 %{
 cubeV
 vfBloc
 
 avbloci
 vfaBloc
 
 sphereV
 vfBalle
 
 vfaBalle
%}
end

