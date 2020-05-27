p_x = [1 3 6 9];
u1 = 0:0.001:1/6;
n1 = 18*u1.^2;
u2 = 1/6:0.001:2/6;
n2 = -36*u2.^2+18*u2-1.5;
u3 = 2/6:0.001:3/6;
n3 = 18*u3.^2-18*u3+4.5;
n1 = p_x(1)*n1;
n2 = p_x(1)*n2;
n3 = p_x(1)*n3;
% ylabel('$N_{0,2}$', 'Interpreter','latex','FontSize', 20);
% xlabel('$u$', 'Interpreter','latex','FontSize', 20);
% title('$N_{0,2}~0\le u< 0.5$', 'Interpreter','latex','FontSize', 20);
u11 = 1/6:0.001:2/6;
n11 = 18*u11.^2-6*u11+0.5;
u21 = 2/6:0.001:3/6;
n21 = -36*u21.^2+30*u21-5.5;
u31 = 3/6:0.001:4/6;
n31 = 18*u31.^2-24*u31+8;
n11 = p_x(2)*n11;
n21 = p_x(2)*n21;
n31 = p_x(2)*n31;

% ylabel('$N_{1,2}$', 'Interpreter','latex','FontSize', 20);
% xlabel('$u$', 'Interpreter','latex','FontSize', 20);
% title('$N_{1,2}~1/6\le u< 4/6$', 'Interpreter','latex','FontSize', 20);

u12 = 2/6:0.001:3/6;
n12 = 18*u12.^2-12*u12+2;
u22 = 3/6:0.001:4/6;
n22 = -36*u22.^2+42*u22-11.5;
u32 = 4/6:0.001:5/6;
n32 = 18*u32.^2-30*u32+12.5;
n12 = p_x(3)*n12;
n22 = p_x(3)*n22;
n32 = p_x(3)*n32;
% ylabel('$N_{2,2}$', 'Interpreter','latex','FontSize', 20);
% xlabel('$u$', 'Interpreter','latex','FontSize', 20);
% title('$N_{2,2}~2/6\le u< 5/6$', 'Interpreter','latex','FontSize', 20);
u13 = 3/6:0.001:4/6;
n13 = 18*u13.^2-18*u13+4.5;
u23 = 4/6:0.001:5/6;
n23 = -36*u23.^2+54*u23-19.5;
u33 = 5/6:0.001:6/6;
n33 = 18*u33.^2-36*u33+18;
n13 = p_x(4)*n13;
n23 = p_x(4)*n23;
n33 = p_x(4)*n33;
N1 = n1;
N2 = n2 + n11;
N3 = n3 + n21 + n12;
N4 = n31 + n22 + n13;
N5 = n32 + n23;
N6 = n33;
N_x = [ N3 N4 ];
% N_x = [N1 N2 N3 N4 N5 N6];
U = [u1 u2 u3 u31 u32 u33];
%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%
p_y = [2 5 2 4];
u1 = 0:0.001:1/6;
n1 = 18*u1.^2;
u2 = 1/6:0.001:2/6;
n2 = -36*u2.^2+18*u2-1.5;
u3 = 2/6:0.001:3/6;
n3 = 18*u3.^2-18*u3+4.5;
n1 = p_y(1)*n1;
n2 = p_y(1)*n2;
n3 = p_y(1)*n3;
% ylabel('$N_{0,2}$', 'Interpreter','latex','FontSize', 20);
% xlabel('$u$', 'Interpreter','latex','FontSize', 20);
% title('$N_{0,2}~0\le u< 0.5$', 'Interpreter','latex','FontSize', 20);
u11 = 1/6:0.001:2/6;
n11 = 18*u11.^2-6*u11+0.5;
u21 = 2/6:0.001:3/6;
n21 = -36*u21.^2+30*u21-5.5;
u31 = 3/6:0.001:4/6;
n31 = 18*u31.^2-24*u31+8;
n11 = p_y(2)*n11;
n21 = p_y(2)*n21;
n31 = p_y(2)*n31;

% ylabel('$N_{1,2}$', 'Interpreter','latex','FontSize', 20);
% xlabel('$u$', 'Interpreter','latex','FontSize', 20);
% title('$N_{1,2}~1/6\le u< 4/6$', 'Interpreter','latex','FontSize', 20);

u12 = 2/6:0.001:3/6;
n12 = 18*u12.^2-12*u12+2;
u22 = 3/6:0.001:4/6;
n22 = -36*u22.^2+42*u22-11.5;
u32 = 4/6:0.001:5/6;
n32 = 18*u32.^2-30*u32+12.5;
n12 = p_y(3)*n12;
n22 = p_y(3)*n22;
n32 = p_y(3)*n32;
% ylabel('$N_{2,2}$', 'Interpreter','latex','FontSize', 20);
% xlabel('$u$', 'Interpreter','latex','FontSize', 20);
% title('$N_{2,2}~2/6\le u< 5/6$', 'Interpreter','latex','FontSize', 20);
u13 = 3/6:0.001:4/6;
n13 = 18*u13.^2-18*u13+4.5;
u23 = 4/6:0.001:5/6;
n23 = -36*u23.^2+54*u23-19.5;
u33 = 5/6:0.001:6/6;
n33 = 18*u33.^2-36*u33+18;
n13 = p_y(4)*n13;
n23 = p_y(4)*n23;
n33 = p_y(4)*n33;
N1 = n1;
N2 = n2 + n11;
N3 = n3 + n21 + n12;
N4 = n31 + n22 + n13;
N5 = n32 + n23;
N6 = n33;
% N_y = [N1 N2 N3 N4 N5 N6];
N_y = [ N3 N4 ];
U = [u1 u2 u3 u31 u32 u33];
X = [1:2/100:3 3:3/100:6 6:3/100:9];
Y = [2:3/100:5 5:-3/100:2 2:2/100:4];
% plot(1:2/100:3,2:3/100:5, 'r--')
% hold
% plot(3:3/100:6,5:-3/100:2, 'r--')
% plot(6:3/100:9,2:2/100:4, 'r--')
plot(X, Y, 'r--');
hold
plot(N_x, N_y,'LineWidth',3);
plot([1 3 6 9],[2 5 2 4],'ko','markerfacecolor','k')
legend({'$real~points$', '$B-Spline$', '$Control~points$'},'Interpreter','latex','FontSize', 20);
ylabel('$Y$', 'Interpreter','latex','FontSize', 20);
xlabel('$X$', 'Interpreter','latex','FontSize', 20);
title('B-Spline curve');
hold