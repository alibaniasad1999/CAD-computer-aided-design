%parametric cubic spline
A = [
0   0   0   1   0   0   0   0   0   0   0   0 ;
1   1   1   1   0   0   0   0   0   0   0   0;
0   0   0   0   0   0   0   1   0   0   0   0;
0   0   0   0   1   1   1   1   0   0   0   0;
0   0   0   0   0   0   0   0   0   0   0   1;
0   0   0   0   0   0   0   0   1   1   1   1;
3   2   1   0   0   0   -1   0   0   0   0   0;
0   0   0   0   3   2   1   0   0   0   -1   0;
6   2   0   0   0   -2   0   0   0   0   0   0 ;
0   0   0   0   6   2   0   0   0   -2   0   0 ;
0   2   0   0   0   0   0   0   0   0   0   0 ;
0   0   0   0   0   0   0   0   6   2   0   0 
];
B_x = [0;0;0;5;5;1;0;0;0;0;0;0];
B_y = [0;2;2;7;7;-2;0;0;0;0;0;0];
answer_x  = (A^-1)*B_x;
answer_y  = (A^-1)*B_y;
u = 0:0.1:1;
C_1_x = answer_x(1).*u.^3+answer_x(2).*u.^2+answer_x(3).*u+answer_x(4);
C_2_x = answer_x(5).*u.^3+answer_x(6).*u.^2+answer_x(7).*u+answer_x(8);
C_3_x = answer_x(9).*u.^3+answer_x(10).*u.^2+answer_x(11).*u+answer_x(12);
C_1_y = answer_y(1).*u.^3+answer_y(2).*u.^2+answer_y(3).*u+answer_y(4);
C_2_y = answer_y(5).*u.^3+answer_y(6).*u.^2+answer_y(7).*u+answer_y(8);
C_3_y = answer_y(9).*u.^3+answer_y(10).*u.^2+answer_y(11).*u+answer_y(12);
X_spline = [C_1_x, C_2_x, C_3_x];
Y_spline = [C_1_y, C_2_y, C_3_y];
X = [0 0 5 1];
Y = [0 2 7 -2];
figure;
plot(X_spline, Y_spline)
hold
plot(X, Y, 's')
% squares are our control points
xlabel('$x$', 'Interpreter','latex','FontSize', 20)
ylabel('$y$', 'Interpreter','latex','FontSize', 20)


