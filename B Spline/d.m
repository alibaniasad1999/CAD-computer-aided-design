u1 = 3/6:0.001:4/6;
n1 = 18*u1.^2-18*u1+4.5;
u2 = 4/6:0.001:5/6;
n2 = -36*u2.^2+54*u2-19.5;
u3 = 5/6:0.001:6/6;
n3 = 18*u3.^2-36*u3+18;
plot(u1,n1,'m')
hold
plot(u2,n2,'m')
plot(u3,n3,'m')
ylabel('$N_{3,2}$', 'Interpreter','latex','FontSize', 20);
xlabel('$u$', 'Interpreter','latex','FontSize', 20);
title('$N_{3,2}~3/6\le u< 6/6$', 'Interpreter','latex','FontSize', 20);