index = zeros(1, 101);
i=0;
for i = 0:1:100
    index(i+1) = i;
end

index = index';

vT1 = 0;
vT2 = 300;

[ nuIt1, nuIt2 ] = Devoir4( vT1, vT2 );

PlotFigure(index, nuIt1, nuIt2, 'Première Situation');

fprintf('Situation 1')
freq1 = nuIt1(:, 1)
int1 = nuIt1(:, 1)
freq2 = nuIt1(:, 2)
int2 = nuIt1(:, 2)


vT1 = 250;
vT2 = 0;

[ nuIt1, nuIt2 ] = Devoir4( vT1, vT2 );

PlotFigure(index, nuIt1, nuIt2, 'Deuxième Situation');

fprintf('Situation 2')
freq1 = nuIt1(:, 1)
int1 = nuIt1(:, 1)
freq2 = nuIt1(:, 2)
int2 = nuIt1(:, 2)


vT1 = 250;
vT2 = 300;

[ nuIt1, nuIt2 ] = Devoir4( vT1, vT2 );

PlotFigure(index, nuIt1, nuIt2, 'Troisième Situation');

fprintf('Situation 3')
freq1 = nuIt1(:, 1)
int1 = nuIt1(:, 1)
freq2 = nuIt1(:, 2)
int2 = nuIt1(:, 2)


vT1 = 250;
vT2 = -300;

[ nuIt1, nuIt2 ] = Devoir4( vT1, vT2 );

PlotFigure(index, nuIt1, nuIt2, 'Quatrième Situation');

fprintf('Situation 4')
freq1 = nuIt1(:, 1)
int1 = nuIt1(:, 1)
freq2 = nuIt1(:, 2)
int2 = nuIt1(:, 2)
