u = 0:0.01:1;
b0 = (1-u).^2;
b1 = u.*(1-u);
b2 = u.^2;
figure;
plot(u, b0)
hold
plot(u, b1)
plot(u, b2)
legend('B(0,2)', 'B(1,2)','B(2,2)')
xlabel('$u$', 'Interpreter','latex','FontSize', 20)
ylabel('$B_{{_{k,n}}(u)}$', 'Interpreter','latex','FontSize', 20)
C_x = u.^2+2*u-1;
C_y = 2*u-2*u.^2;
X = [-1, 0, 2];
Y = [0, 1, 0];
figure
plot(C_x, C_y,'LineWidth',2);
hold
plot(X, Y, '--k')
% plot(X, Y, 'o')
plot(X,Y,'o','MarkerSize',10,...
    'MarkerEdgeColor','red',...
    'MarkerFaceColor',[1 .6 .6])
axis([-1.5 2.5 -0.25 1.25])
text(-1, -0.05, 'P_1')
text(0, 0.93, 'P_2')
text(2, -0.05, 'P_3')
legend('bezier')
xlabel('$x$', 'Interpreter','latex','FontSize', 20)
ylabel('$y$', 'Interpreter','latex','FontSize', 20)
figure
plot(C_x, C_y,'LineWidth',2);
hold
plot(X, Y, '--k')
% plot(X, Y, 'o')
plot(X,Y,'o','MarkerSize',10,...
    'MarkerEdgeColor','red',...
    'MarkerFaceColor',[1 .6 .6])
plot(C_x(26),C_y(26),'-s','MarkerSize',10,...
    'MarkerEdgeColor','black',...
    'MarkerFaceColor',[1 1 1])
axis([-1.5 2.5 -0.25 1.25])
xlabel('$x$', 'Interpreter','latex','FontSize', 20)
ylabel('$y$', 'Interpreter','latex','FontSize', 20)
text(-0.4375, 0.325, 'C_{(0.25)}')
text(-1, -0.05, 'P_1')
text(0, 0.93, 'P_2')
text(2, -0.05, 'P_3')