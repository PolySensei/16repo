function c= QProduit (a ,b)
% Produit de 2 quaternions
%v1 =a (2:4);
%v2 =b (2:4);
%vp = cross (v1 , v2 );
%vecpc =a (1)* v2 +b (1)* v1 + vp ;
%c= horzcat (( a (1)* b (1) -( v1 *v2')) , vecpc )

n0 = b(1)*a(1) - b(2)*a(2)-b(3)*a(3)-b(4)*a(4);
n1 = b(1)*a(2) + b(2)*a(1)-b(3)*a(4)+b(4)*a(3);
n2 = b(1)*a(3) + b(2)*a(4)+b(3)*a(1)-b(4)*a(2);
n3 = b(1)*a(4) - b(2)*a(3)+b(3)*a(2)+b(4)*a(1);
c = [n0 n1 n2 n3];
end