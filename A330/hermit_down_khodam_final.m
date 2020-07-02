u = 0:0.01:1;
h_0 = 2*u.^3-3*u.^2+1;
h_1 = -2*u.^3+3*u.^2;
h_2 = u.^3-2*u.^2+u;
h_3 = u.^3-u.^2;
P_1 = 70.6091;
P_2 = 57.0726;
DP_1 = -4.47;
DP_2 = -1.73;
p1 = P_1*h_0+P_2*h_1+DP_1*h_2+DP_2*h_3;
Py_1 = 0;
Py_2 = -32.9509;
py1 = Py_1*h_0+Py_2*h_1+DP_1*h_2+DP_2*h_3;
P_3 = 44.3806;
DP_3 = -2.74;
p2 = P_2*h_0+P_3*h_1+DP_2*h_2+DP_3*h_3;
Py_3 = -1*P_3;
py2 = Py_2*h_0+Py_3*h_1+DP_2*h_2+DP_3*h_3;
%4
P_4 = 30.5973;
DP_4 = -11.43;
Py_4 = -52.996;
p3 = P_3*h_0+P_4*h_1+DP_3*h_2+DP_4*h_3;
py3 = Py_3*h_0+Py_4*h_1+DP_3*h_2+DP_4*h_3;
%5
P_5 = 0;
DP_5 = 0;
Py_5 = -59.6255;
p4 = P_4*h_0+P_5*h_1+DP_4*h_2+DP_5*h_3;
py4 = Py_4*h_0+Py_5*h_1+DP_4*h_2+DP_5*h_3;
figure
plot(x, y, 'o--')
hold
axis equal
plot(p1, py1,'linewidth',2)
plot(p2, py2,'linewidth',2)
plot(p3, py3,'linewidth',2)
plot(p4, py4,'linewidth',2)
legend('points', 'f2','f2','f3','f4')
% axis([0 80 0 110])
DP_1 = 70;
p5 = P_1*h_0+P_5*h_1+DP_1*h_2+DP_5*h_3;
py5 = Py_1*h_0+Py_5*h_1+DP_1*h_2+DP_5*h_3;
figure
plot(x, y, 'o--')
hold
axis equal
plot(p5, py5,'linewidth',2)