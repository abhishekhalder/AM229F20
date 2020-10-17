close all; clear; clc;

% SPD matrices

x = 0:0.01:1; y = 0:0.01:1;

[X,Y] = meshgrid (x,y);

Z = sqrt(X.*Y);

set(groot,'defaultAxesTickLabelInterpreter','latex');  
set(groot,'defaulttextinterpreter','latex');
set(groot,'defaultLegendInterpreter','latex');
set(gca,'FontSize',28)
figure(1)
surf(X,Y, Z,'edgecolor','none'); 
shading interp;
hold on;
surf(X,Y,-Z,'edgecolor','none');
alpha 0.4
shading interp;
axis([0,1,0,1,-1,1]);
view([62,24]); hold on
scatter3(0,0,0,40,'r','MarkerFaceColor','r')
xlabel('$x$','FontSize',20)
ylabel('$y$','FontSize',20)
zlabel('$z$','FontSize',20,'rotation',0)