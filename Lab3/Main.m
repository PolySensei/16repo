



%coup 1
ti = 0.545454;
vBloc = [-2 -3 5]';
wBloc = [0 0 0]';
vBalle = [5 2 0.642424]';

[Resultat blocf ballef Post]= Devoir3( vBloc,wBloc,ti,vBalle );
PlotFigure(Post(:,2), Post(:,3), Post(:,4), Post(:,5), Post(:,6), Post(:,7), 'Tir 1', Resultat);

Tf1 = Post(end, 1)
Resultat
blocf
ballef
posBlocf = Post(end, 2:4)
posBallef = Post(end, 5:7)

%coup 2
ti = 0.545454;
vBloc = [-2 -3 5]';
wBloc = [0 0 15]';
vBalle = [5 2 0.642424]';

[Resultat blocf ballef Post]= Devoir3( vBloc,wBloc,ti,vBalle );
PlotFigure(Post(:,2), Post(:,3), Post(:,4), Post(:,5), Post(:,6), Post(:,7), 'Tir 2', Resultat);

Tf2 = Post(end, 1)
Resultat
blocf
ballef
posBlocf = Post(end, 2:4)
posBallef = Post(end, 5:7)

%coup 3
ti = 0.071429;
vBloc = [0 -6 3]';
wBloc = [0 0 0]';
vBalle = [7 0 0.40834]';

[Resultat blocf ballef Post]= Devoir3( vBloc,wBloc,ti,vBalle );
PlotFigure(Post(:,2), Post(:,3), Post(:,4), Post(:,5), Post(:,6), Post(:,7), 'Tir 3', Resultat);

Tf3 = Post(end, 1)
Resultat
blocf
ballef
posBlocf = Post(end, 2:4)
posBallef = Post(end, 5:7)

%coup 4
ti = 0.071429;
vBloc = [0 -6 3]';
wBloc = [0 0 15]';
vBalle = [5 2 0.40834]';

[Resultat blocf ballef Post]= Devoir3( vBloc,wBloc,ti,vBalle );
PlotFigure(Post(:,2), Post(:,3), Post(:,4), Post(:,5), Post(:,6), Post(:,7), 'Tir 4', Resultat);

Tf4 = Post(end, 1)
Resultat
blocf
ballef
posBlocf = Post(end, 2:4)
posBallef = Post(end, 5:7)

%coup 5
ti = 0.6;
vBloc = [-2 -3 5]';
wBloc = [-5 -5 0]';
vBalle = [5 2 0.642424]';

[Resultat blocf ballef Post]= Devoir3( vBloc,wBloc,ti,vBalle );
PlotFigure(Post(:,2), Post(:,3), Post(:,4), Post(:,5), Post(:,6), Post(:,7), 'Tir 5', Resultat);

Tf5 = Post(end, 1)
Resultat
blocf
ballef
posBlocf = Post(end, 2:4)
posBallef = Post(end, 5:7)

%coup 6
ti = 0.1;
vBloc = [-2 -3 5]';
wBloc = [0 0 0]';
vBalle = [5 2 0.1]';

[Resultat blocf ballef Post]= Devoir3( vBloc,wBloc,ti,vBalle );
PlotFigure(Post(:,2), Post(:,3), Post(:,4), Post(:,5), Post(:,6), Post(:,7), 'Tir 6', Resultat);

Tf6 = Post(end, 1)
Resultat
blocf
ballef
posBlocf = Post(end, 2:4)
posBallef = Post(end, 5:7)


