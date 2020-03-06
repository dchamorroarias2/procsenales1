%%Punto 1: Halle la función matemática que modela la gráfica propuesta:
%%V=[-2u(t+1)+2r(t+1)-2r(t-1)+r(t-2)-u(t-2)+r(t-4)-r(t-5)+r(t-7)+u(t-7)]

clc;
clear;
close all;

t1=-5:0.0001:9;
f=-2.*heaviside(t1+1)+2.*(t1+1).*heaviside(t1+1)-2.*(t1-1).*heaviside(t1-1)+heaviside(t1-2)-(t1-2).*heaviside(t1-2)...
+(t1-4).*heaviside(t1-4)-(t1-5).*heaviside(t1-5)+(t1-7).*heaviside(t1-7)+heaviside(t1-7);

plot(t1,f,'linewidth',2,'color','blue');
set(gcf,'name','FUNCION MATEMATICA DE SEÑALES BASICAS','numbertitle','off')
axis([-3 8 -3 4]);
title('V = -2u(t+1) + 2r(t+1) - 2r(t-1) + r(t-2) - u(t-2) + r(t-4) - r(t-5) + r(t-7) + u(t-7)','color','red');
grid on;