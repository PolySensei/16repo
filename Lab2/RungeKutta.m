
function qs = RungeKutta ( v, w , Deltat , fonction )
%RungeKutta Use Runge-kutta to get the next ball position iteration
%   v = speed, w = angular momentum.  

k1 = feval ( fonction , v , w )* Deltat ;
k2 = feval ( fonction , v + k1 /2 , w)* Deltat ;
k3 = feval ( fonction , v + k2 /2 , w)* Deltat ;
k4 = feval ( fonction , v + k3 , w)* Deltat ;
qs = v +( k1 +2* k2 +2* k3 + k4 )/6;