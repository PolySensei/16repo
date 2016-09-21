
%DEFINITIONS
propulseurMasse = 200;
propulseurLongueur = 0.3;
propulseurRayon = 0.75;

coneArriereMasse = 800;
coneArriereLongueur = 1.5; 
coneArriereRayon = 1;

cylindreArriereMasse = 1500;
cylindreArriereLongueur = 1.5;
cylindreArriereRayon = 1;

cylindreAvantMasse = 1000;
cylindreAvantLongueur = 3;
cylindreAvantRayon = 1.5;

coneAvantMasse  = 500;
coneAvantlongueur = 1;
coneAvantRayon = 1.5;

%Centre de masse
propulseurRot = Rotz(-pi/4);
propulseurCentreMasse = [-propulseurLongueur/2,0,0]';
propulseurCentreMasse = propulseurRot*propulseurCentreMasse;

coneArriereCentreMasse = [coneArriereLongueur-coneArriereLongueur/4 0 0]';

cylindreArriereCentreMasse = [coneArriereLongueur+cylindreArriereLongueur/2 0 0]';

cylindreAvantCentreMasse = [coneArriereLongueur+cylindreArriereLongueur+cylindreAvantLongueur/2 0 0]';

coneAvantCentreMasse = [coneArriereLongueur+cylindreArriereLongueur+cylindreAvantLongueur+coneAvantlongueur/4 0 0]';

masseTotal = propulseurMasse+coneArriereMasse+cylindreArriereMasse+cylindreAvantMasse+coneAvantMasse;

centreMasseGlobal = propulseurCentreMasse*propulseurMasse;
centreMasseGlobal = centreMasseGlobal + (coneArriereMasse*coneArriereCentreMasse);
centreMasseGlobal = centreMasseGlobal + (cylindreArriereMasse*cylindreArriereCentreMasse);
centreMasseGlobal = centreMasseGlobal + (cylindreAvantMasse*cylindreAvantCentreMasse);
centreMasseGlobal = centreMasseGlobal + (coneAvantMasse*coneAvantCentreMasse);

centreMasseGlobal = centreMasseGlobal/masseTotal

%Inertie
propulseurInertie = InertieCylindreCreux (propulseurMasse, propulseurRayon, propulseurLongueur);
propulseurInertie = propulseurRot*(Roty(-pi/2)*propulseurInertie*Roty(-pi/2)')*propulseurRot';
propulseurInertie = momentDeplacementInertie( propulseurInertie, propulseurMasse, centreMasseGlobal, propulseurCentreMasse );

coneArrierreInertie = InertieCone(coneArriereMasse, coneArriereRayon, coneArriereLongueur);
coneArrierreInertie = Roty(-pi/2)*coneArrierreInertie*Roty(-pi/2)';
coneArrierreInertie = momentDeplacementInertie(coneArrierreInertie, coneArriereMasse, centreMasseGlobal, coneArriereCentreMasse);

cylindreArriereInertie = InertieCylindrePlein(cylindreArriereMasse, cylindreArriereRayon, cylindreArriereLongueur);
cylindreArriereInertie = Roty(-pi/2)*cylindreArriereInertie*Roty(-pi/2)';
cylindreArriereInertie = momentDeplacementInertie(cylindreArriereInertie, cylindreArriereMasse, centreMasseGlobal, cylindreArriereCentreMasse);

cylindreAvantInertie = InertieCylindreCreux(cylindreAvantMasse, cylindreAvantRayon, cylindreAvantLongueur);
cylindreAvantInertie = Roty(-pi/2)*cylindreAvantInertie*Roty(-pi/2)';
cylindreAvantInertie =  momentDeplacementInertie(cylindreAvantInertie, cylindreAvantMasse, centreMasseGlobal, cylindreAvantCentreMasse);

coneAvantInertie = InertieCone(coneAvantMasse, coneAvantRayon, coneAvantlongueur);
coneAvantInertie = Roty(pi/2)*coneAvantInertie*Roty(pi/2)';
coneAvantInertie = momentDeplacementInertie(coneAvantInertie, coneAvantMasse, centreMasseGlobal, coneAvantCentreMasse);

inertieGlobale = propulseurInertie+coneArrierreInertie+cylindreArriereInertie+cylindreAvantInertie+coneAvantInertie

%application force sans mouvement
force = [1000 -1000 0]';
forceLocation =[0 0 0 ]';

torque = cross ((forceLocation-centreMasseGlobal) ,force)

accelerationAngulaire = inv(inertieGlobale) * torque

%application force avec mouvement
vitesseAngulaire = [0 0.1 0]';
vitesseAngulaireMat = wMat(vitesseAngulaire);

accelerationAngulaireEnMouvement = inv(inertieGlobale)* (torque - vitesseAngulaireMat * inertieGlobale * vitesseAngulaire)

%THIS IS A COMMENT AND THE START OF THE SECOND PHASE.
rotationMatrix = Roty(-10*2*pi/360);

%centre masse
propulseurCentreMasseRot = propulseurCentreMasse;
coneArriereCentreMasseRot = rotationMatrix*coneArriereCentreMasse;
cylindreArriereCentreMasseRot = rotationMatrix*cylindreArriereCentreMasse;
cylindreAvantCentreMasseRot = rotationMatrix*cylindreAvantCentreMasse;
coneAvantCentreMasseRot = rotationMatrix*coneAvantCentreMasse;

centreMasseGlobalRot = propulseurCentreMasseRot*propulseurMasse;
centreMasseGlobalRot = centreMasseGlobalRot + (coneArriereMasse*coneArriereCentreMasseRot);
centreMasseGlobalRot = centreMasseGlobalRot + (cylindreArriereMasse*cylindreArriereCentreMasseRot);
centreMasseGlobalRot = centreMasseGlobalRot + (cylindreAvantMasse*cylindreAvantCentreMasseRot);
centreMasseGlobalRot = centreMasseGlobalRot + (coneAvantMasse*coneAvantCentreMasseRot);

centreMasseGlobalRot = centreMasseGlobalRot/masseTotal

%inertie

propulseurInertieRot = InertieCylindreCreux (propulseurMasse, propulseurRayon, propulseurLongueur);
propulseurInertieRot = rotationMatrix*(propulseurRot*(Roty(-pi/2)*propulseurInertieRot*Roty(-pi/2)')*propulseurRot')*rotationMatrix';
propulseurInertieRot = momentDeplacementInertie( propulseurInertieRot, propulseurMasse, centreMasseGlobalRot, propulseurCentreMasseRot );

coneArrierreInertieRot = InertieCone(coneArriereMasse, coneArriereRayon, coneArriereLongueur);
coneArrierreInertieRot = rotationMatrix*(Roty(-pi/2)*coneArrierreInertieRot*Roty(-pi/2)')*rotationMatrix';
coneArrierreInertieRot = momentDeplacementInertie(coneArrierreInertieRot, coneArriereMasse, centreMasseGlobalRot, coneArriereCentreMasseRot);

cylindreArriereInertieRot = InertieCylindrePlein(cylindreArriereMasse, cylindreArriereRayon, cylindreArriereLongueur);
cylindreArriereInertieRot = rotationMatrix*(Roty(-pi/2)*cylindreArriereInertieRot*Roty(-pi/2)')*rotationMatrix';
cylindreArriereInertieRot = momentDeplacementInertie(cylindreArriereInertieRot, cylindreArriereMasse, centreMasseGlobalRot, cylindreArriereCentreMasseRot);

cylindreAvantInertieRot = InertieCylindreCreux(cylindreAvantMasse, cylindreAvantRayon, cylindreAvantLongueur);
cylindreAvantInertieRot = rotationMatrix*(Roty(-pi/2)*cylindreAvantInertieRot*Roty(-pi/2)')*rotationMatrix';
cylindreAvantInertieRot =  momentDeplacementInertie(cylindreAvantInertieRot, cylindreAvantMasse, centreMasseGlobalRot, cylindreAvantCentreMasseRot);

coneAvantInertieRot = InertieCone(coneAvantMasse, coneAvantRayon, coneAvantlongueur);
coneAvantInertieRot = rotationMatrix*(Roty(pi/2)*coneAvantInertieRot*Roty(pi/2)')*rotationMatrix';
coneAvantInertieRot = momentDeplacementInertie(coneAvantInertieRot, coneAvantMasse, centreMasseGlobalRot, coneAvantCentreMasseRot);

inertieGlobaleRot = propulseurInertieRot+coneArrierreInertieRot+cylindreArriereInertieRot+cylindreAvantInertieRot+coneAvantInertieRot

%application force sans mouvement
torqueRot = cross ((forceLocation - centreMasseGlobalRot) ,force)

accelerationAngulaireRot = inv(inertieGlobaleRot) * torqueRot

%application force avec mouvement
accelerationAngulaireEnMouvementRot = inv(inertieGlobaleRot)* (torqueRot - vitesseAngulaireMat * inertieGlobaleRot * vitesseAngulaire)





