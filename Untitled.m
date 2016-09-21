propulseurMasse = 200;
propulseurLongueur = 0.3;
propulseurRayon = 0/75;

coneArriereMasse = 800;
coneArriereHauteure = 1.5; 
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


propulseurRot = Rotz(-pi/4);
propulseurCentreMasse = [-propulseurLongueur/2,0,0]';
propulseurCentreMasse = propulseurRot*propulseurCentreMasse;

coneArriereCentreMasse = [1.5-1.5/4 0 0]';

cylindreArriereCentreMasse = [coneArriereHauteure+cylindreArriereLongueur/2 0 0]';

cylindreAvantCentreMasse = [coneArriereHauteure+cylindreArriereLongueur+cylindreAvantLongueur/2 0 0]';

coneAvantCentreMasse = [coneArriereHauteure+cylindreArriereLongueur+cylindreAvantLongueur+coneAvantlongueur/4 0 0]';

masseTotal = propulseurMasse+coneArriereMasse+cylindreArriereMasse+cylindreAvantMasse+coneAvantMasse;
centreMasseGlobal = propulseurCentreMasse*propulseurMasse;
centreMasseGlobal = centreMasseGlobal + (coneArriereMasse*coneArriereCentreMasse);
centreMasseGlobal = centreMasseGlobal + (cylindreArriereMasse*cylindreArriereCentreMasse);
centreMasseGlobal = centreMasseGlobal + (cylindreAvantMasse*cylindreAvantCentreMasse);
centreMasseGlobal = centreMasseGlobal + (coneAvantMasse*coneAvantCentreMasse);

centreMasseGlobal = centreMasseGlobal/masseTotal















