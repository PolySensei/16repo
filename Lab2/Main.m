%Definitions 0,0,0 is the right left corner of terrain all measurment of
%distance is in meters, of speed in m/s of angular momentum in rad/s

xy01 =[ 13.10857 142]';
vb01 = [30 0 21.052266]';
wb01 = [0 -450 0]';
[ ret,vbf,t,x,y,z ] = coup(0,xy01,vb01,wb01)
scatter3(x,y,z)