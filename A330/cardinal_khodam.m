syms u
s = 2;
CAR_0 = -s*u^3+2*s*u^2-s*u;
CAR_1 = (2-s)*u^3+(s-3)*u^2+1;
CAR_2 = (s-2)*u^3+(3-2*s)*u^2+s*u;
CAR_3 = s*u^3-s*u^2;
%1-2
p1 = x(1)*CAR_0+x(1)*CAR_1+x(2)*CAR_2+x(2)*CAR_3;
py1 = y(1)*CAR_0+y(1)*CAR_1+y(2)*CAR_2+y(2)*CAR_3;
%2-3
p2 = x(2)*CAR_0+x(2)*CAR_1+x(3)*CAR_2+x(3)*CAR_3;
py2 = y(2)*CAR_0+y(2)*CAR_1+y(3)*CAR_2+y(3)*CAR_3;
%3-4
p3 = x(3)*CAR_0+x(3)*CAR_1+x(4)*CAR_2+x(4)*CAR_3;
py3 = y(3)*CAR_0+y(3)*CAR_1+y(4)*CAR_2+y(4)*CAR_3;
%4-5
p4 = x(4)*CAR_0+x(4)*CAR_1+x(5)*CAR_2+x(5)*CAR_3;
py4 = y(4)*CAR_0+y(4)*CAR_1+y(5)*CAR_2+y(5)*CAR_3;