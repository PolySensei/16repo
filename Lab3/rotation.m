function [ axes] = rotation(  w, t)
%ROTATION Summary of this function goes here
%   Detailed explanation goes here
rot = w*t;
xAxe = [1 0 0];
yAxe = [0 1 0];
zAxe = [0 0 1];
vrot =[1 0 0;
    -1 0 0;
    0 1 0;
    0 -1 0;
    0 0 1;
    0 0 -1]';
axes= [];
for m = 0:5
    temp = vrot(m*3+1:m*3+3)';
    temp = QARotation(temp , rot(1),xAxe);
    temp = QARotation(temp , rot(2),yAxe);
    temp = QARotation(temp , rot(3),zAxe);
    axes = [axes temp];
end

end

