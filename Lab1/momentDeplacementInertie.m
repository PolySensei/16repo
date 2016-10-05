function [ Id ] = momentDeplacementInertie( Ic, m, d, rc )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

dc = d - rc;

Id = Ic + m * [dc(2)*dc(2)+dc(3)*dc(3) -dc(1)*dc(2) -dc(1)*dc(3); -dc(2)*dc(1) dc(1)*dc(1)+dc(3)*dc(3) -dc(2)*dc(3); -dc(3)*dc(1) dc(3)*dc(2) dc(1)*dc(1)+dc(2)*dc(2)];

end

