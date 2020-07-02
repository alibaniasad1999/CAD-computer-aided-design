a = 69;
c = 100.42;
d = 64.39;
e = 36;
k = (e*c*(a-e))/((c*d-a*e)^2);
P = (2*a*c*k-c)/(2*a^2*k);
Q = a*c/(2*a^2*k);
R = (c^2-4*a*c^2*k)/(4*(a^2*k)^2);
S = 2*Q*P;
T = Q^2;
% x = 0:69;
syms x
y = P*x+Q-sqrt(R*x^2+S*x+T);
plot(x, y,'linewidth',2)
axis equal
