function [Resultat blocf ballef Post]= Devoir3( vbloci,avbloci,tl,vballei )
%DEVOIR3 Fonction principale du devoir
%   Detailed explanation goes here
  accel = [0 0 -9.8];
  cubePosInit = [3 3 1]';
  cubeRotInit = [0 0 0]';
  cubeSpeedInit = vbloci;
  
  spherePosI= [0 0 2]';
  sphereSpeedI= bBallei;
  tI = t1;
  cubePosI;
  
  [cubePosI] = gravity(cubePosInit, tI, cubeSpeedInit);
  


end

