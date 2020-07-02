t1 = 86.3/5.5;
t2 = pi/180;
x = [5.5*t1 5.3*t1*cos(30*t2) 5.8*t1*cos(45*t2) 6.2*t1*cos(70*t2) 0];
y = [0 5.3*t1*sin(30*t2) 5.8*t1*sin(45*t2) 6.2*t1*sin(70*t2) 6.4*t1];
x(1) = 69;
%cubic spline
pp = spline(x, y);
%from pp
x1 = (x(1):0.1:x(2));

eq1 = 0.3577*(-x1+x(2)).^3+4.1831 *(-x1+x(2)).^2-2.1293*(-x1+x(2))+0;
x2 = (x(3):0.1:x(2));
eq2 = 0.3577 *(-x2+x(2)).^3-0.8048*(-x2+x(2)).^2-17.8319*(-x2+x(2))+64.3519;
x3 = (x(4):0.1:x(3));
eq3 = -0.0083*(-x3+x(3)).^3-0.02768*(-x3+x(3)).^2+8.0388 *(-x3+x(3))+91.4167;
x4 = (x(5):0.1:x(4));
eq4 = -0.0083*(-x4+x(4)).^3+0.8044*(-x4+x(4)).^2-17.8084*(-x4+x(4))+100.4218;
figure
plot(x, y, 'o--');
hold;
plot(flip(x1), eq1, 'g');
plot(flip(x2), eq2,'r');
plot(flip(x3), eq3,'r');
plot(flip(x4), eq4,'r');
axis equal
axis([0 100 0 120])