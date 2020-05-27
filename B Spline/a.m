u1 = 0:0.001:1/6;
n1 = 18*u1.^2;
u2 = 1/6:0.001:2/6;
n2 = -36*u2.^2+18*u2-1.5;
u3 = 2/6:0.001:3/6;
n3 = 18*u3.^2-18*u3+4.5;
figure;
plot(u1,n1,'b')
hold
plot(u2,n2,'b')
plot(u3,n3,'b')
ylabel('$N_{0,2}$', 'Interpreter','latex','FontSize', 20);
xlabel('$u$', 'Interpreter','latex','FontSize', 20);
title('$N_{0,2}~0\le u< 0.5$', 'Interpreter','latex','FontSize', 20);
