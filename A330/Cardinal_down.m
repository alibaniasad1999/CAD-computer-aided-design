

n=100;          % number of intervals (i.e. parametric curve would be evaluted n+1 times)


Px=[x(1) x x(5)];	% Px contains x-coordinates of control points 
Py=[y(1) y y(5)];	% Py contains y-coordinates of control points 
% Note first and last points are repeated so that spline curve passes
% through all points

% when Tension=0 the class of Cardinal spline is known as Catmull-Rom spline
Tension=0; 
figure
set1x=[];
set1y=[];
for k=1:length(Px)-3
    [xvec,yvec]=EvaluateCardinal2DAtNplusOneValues([Px(k),Py(k)],[Px(k+1),Py(k+1)],[Px(k+2),Py(k+2)],[Px(k+3),Py(k+3)],Tension,n);
    set1x=[set1x, xvec];
    set1y=[set1y, yvec];    
end

Tension=0.5; 
set2x=[];
set2y=[];
for k=1:length(Px)-3
    [xvec,yvec]=EvaluateCardinal2DAtNplusOneValues([Px(k),Py(k)],[Px(k+1),Py(k+1)],[Px(k+2),Py(k+2)],[Px(k+3),Py(k+3)],Tension,n);   
    set2x=[set2x, xvec];
    set2y=[set2y, yvec];    
end
plot(set1x,set1y,'g',set2x,set2y,'b','linewidth',2)

% no longer need. free the memory
clear set1x, clear set1y, clear set2x, clear set2y, clear xvec, clear yvec 

h = legend('Tension=0 (Catmull-Rom)','Tension=0.5');
hold on

plot(Px,Py,'ro','linewidth',2) % plot control points
title('\bfCardinal Spline')
hold off
axis equal
axis([0 100 0 120])
% % % --------------------------------
% % % Author: Dr. Murtaza Khan
% % % Email : drkhanmurtaza@gmail.com
% % % --------------------------------