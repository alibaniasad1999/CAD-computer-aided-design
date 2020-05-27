u1 = 0:0.001:1/6;
n1 = 18*u1.^2;
u2 = 1/6:0.001:2/6;
n2 = -36*u2.^2+18*u2-1.5;
u3 = 2/6:0.001:3/6;
n3 = 18*u3.^2-18*u3+4.5;
U1 = [u1 u2 u3];
N1 = [n1 n2 n3];
% ylabel('$N_{0,2}$', 'Interpreter','latex','FontSize', 20);
% xlabel('$u$', 'Interpreter','latex','FontSize', 20);
% title('$N_{0,2}~0\le u< 0.5$', 'Interpreter','latex','FontSize', 20);
u11 = 1/6:0.001:2/6;
n11 = 18*u11.^2-6*u11+0.5;
u21 = 2/6:0.001:3/6;
n21 = -36*u21.^2+30*u21-5.5;
u31 = 3/6:0.001:4/6;
n31 = 18*u31.^2-24*u31+8;
U11 = [u11 u21 u31];
N11 = [n11 n21 n31];

% ylabel('$N_{1,2}$', 'Interpreter','latex','FontSize', 20);
% xlabel('$u$', 'Interpreter','latex','FontSize', 20);
% title('$N_{1,2}~1/6\le u< 4/6$', 'Interpreter','latex','FontSize', 20);

u12 = 2/6:0.001:3/6;
n12 = 18*u12.^2-12*u12+2;
u22 = 3/6:0.001:4/6;
n22 = -36*u22.^2+42*u22-11.5;
u32 = 4/6:0.001:5/6;
n32 = 18*u32.^2-30*u32+12.5;
U12 = [u12 u22 u32];
N12 = [n12 n22 n32];
% ylabel('$N_{2,2}$', 'Interpreter','latex','FontSize', 20);
% xlabel('$u$', 'Interpreter','latex','FontSize', 20);
hold
% title('$N_{2,2}~2/6\le u< 5/6$', 'Interpreter','latex','FontSize', 20);
u13 = 3/6:0.001:4/6;
n13 = 18*u13.^2-18*u13+4.5;
u23 = 4/6:0.001:5/6;
n23 = -36*u23.^2+54*u23-19.5;
u33 = 5/6:0.001:6/6;
n33 = 18*u33.^2-36*u33+18;
U13 = [u13 u23 u33];
N13 = [n13 n23 n33];
figure;
plot(U1,N1,'b')
hold
% plot(u2,n2,'b')
% plot(u3,n3,'b')
plot(U11,N11,'g')
% plot(u21,n21,'g')
% plot(u31,n31,'g')
plot(U12,N12,'r')
% plot(u22,n22,'r')
% plot(u32,n32,'r')
plot(U13,N13,'m')
% plot(u23,n23,'m')
% plot(u33,n33,'m')
ylabel('$N_{0,2},N_{1,2},N_{2,2},N_{3,2}$', 'Interpreter','latex','FontSize', 20);
xlabel('$u$', 'Interpreter','latex','FontSize', 20);
title('$N_{0,2},N_{1,2},N_{2,2},N_{3,2}~0\le u< 1$', 'Interpreter','latex','FontSize', 20);
legend({'$N_{0,2}$','$N_{1,2}$','$N_{2,2}$','$N_{3,2}$'},'Interpreter','latex','FontSize', 20);
 p_x = [1 3 6 9];
 P_y = [2 5 2 4];