close all; clear; clc;

deg = 10; % degree of polynomial p

p = rand(deg+1,1);% coefficients of polynomial p

r = roots(p); % roots (zeros) of polynomial p

c = roots(polyder(p)); % critical points (zeros of derivative) of p

real_r = real(r); imag_r = imag(r);

[k, av] = convhull(real_r, imag_r);

%% plot

set(0,'defaulttextinterpreter','latex');
set(groot,'defaultAxesTickLabelInterpreter','latex');
set(0,'defaultLegendInterpreter','latex');

plot(r,'bo','Markerfacecolor','b','MarkerSize',14)
hold on
plot(real_r(k), imag_r(k),'-b','LineWidth',2)
hold on
plot(c,'ro','Markerfacecolor','r','MarkerSize',14)
set(gca,'FontSize',22)
xlabel('${\rm{Real\;part}}$','FontSize',28)
ylabel('${\rm{Imaginary\;part}}$','FontSize',28,'rotation',90)


