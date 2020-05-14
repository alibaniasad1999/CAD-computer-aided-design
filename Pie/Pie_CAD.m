function [] = Pie_CAD(data)
figure
axis equal
hold;
axis ([-1.5 1.5 -1.5 1.5])
r = 0:0.001:1;
x0 = 0;
x1 = data(1)/100*2*pi;
for i = x0:0.001:x1
    plot(r*cos(i), r*sin(i),'color', '[0 0.4470 0.7410]');
end
x2 = x1+data(2)/100*2*pi;
for i = x1:0.001:x2
    plot(r*cos(i), r*sin(i),'color', '[0.8500 0.3250 0.0980]');
end
x3 = x2+data(3)/100*2*pi;
for i = x2:0.001:x3
    plot(r*cos(i), r*sin(i),'color', '[0.3010 0.7450 0.9330]');
end
x4 = x3+data(4)/100*2*pi;
for i = x3:0.001:x4
    plot(r*cos(i), r*sin(i),'color', '[0.4660 0.6740 0.1880]');
end
Perc_A = num2str(data(1));
Perc_B = num2str(data(2));
Perc_C = num2str(data(3));
Perc_D = num2str(data(4));
Perc_A = strcat(Perc_A, '%');
Perc_B = strcat(Perc_B, '%');
Perc_C = strcat(Perc_C, '%');
Perc_D = strcat(Perc_D, '%');
text(1.2*cos((x0+x1)/2),1.2*sin((x0+x1)/2), 'A' ,'FontSize',20)
text(1.2*cos((x2+x1)/2),1.2*sin((x2+x1)/2), 'B','FontSize',20)
text(1.2*cos((x2+x3)/2),1.2*sin((x2+x3)/2), 'C','FontSize',20)
text(1.2*cos((x4+x3)/2),1.2*sin((x4+x3)/2), 'D','FontSize',20)
text(0.7*cos((x0+x1)/2),0.75*sin((x0+x1)/2), Perc_A,'FontSize',16)
text(0.7*cos((x2+x1)/2),0.75*sin((x2+x1)/2), Perc_B,'FontSize',16)
text(0.7*cos((x2+x3)/2),0.75*sin((x2+x3)/2), Perc_C,'FontSize',16)
text(0.7*cos((x4+x3)/2),0.75*sin((x4+x3)/2), Perc_D,'FontSize',16)
end