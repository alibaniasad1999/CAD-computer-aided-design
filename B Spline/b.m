u1 = 1/6:0.001:2/6;
n1 = 18*u1.^2-6*u1+0.5;
u2 = 2/6:0.001:3/6;
n2 = -36*u2.^2+30*u2-5.5;
u3 = 3/6:0.001:4/6;
n3 = 18*u3.^2-24*u3+8;
plot(u1,n1,'b')
hold
plot(u2,n2,'b')
plot(u3,n3,'b')
ylabel('$N_{1,2}$', 'Interpreter','latex','FontSize', 20);
xlabel('$u$', 'Interpreter','latex','FontSize', 20);
title('$N_{1,2}~1/6\le u< 4/6$', 'Interpreter','latex','FontSize', 20);