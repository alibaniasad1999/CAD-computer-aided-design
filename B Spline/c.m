u1 = 2/6:0.001:3/6;
n1 = 18*u1.^2-12*u1+2;
u2 = 3/6:0.001:4/6;
n2 = -36*u2.^2+42*u2-11.5;
u3 = 4/6:0.001:5/6;
n3 = 18*u3.^2-30*u3+12.5;
plot(u1,n1,'r')
hold
plot(u2,n2,'r')
plot(u3,n3,'r')
ylabel('$N_{2,2}$', 'Interpreter','latex','FontSize', 20);
xlabel('$u$', 'Interpreter','latex','FontSize', 20);
title('$N_{2,2}~2/6\le u< 5/6$', 'Interpreter','latex','FontSize', 20);