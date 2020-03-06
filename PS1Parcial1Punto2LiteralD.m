%%Punto 2: Si una señal original es u(t), graficar las siguientes funciones
%%Literal D: 7u(6t+12)

clc;
clear;
close all;

t1=-5:0.01:9;
y1=7*ustep(6*t1,+12);
y=y1;
plot(t1,y,'linewidth',2,'color','blue');
set(gcf,'name','FUNCION MATEMATICA DE SEÑALES BASICAS','numbertitle','off')
axis([-5 3 -1 10]);
title('d)   7u(6t+12)','color','red');

function y = ustep(t1,ad)
                                                                            
N= length(t1);
y = zeros(1,N);
    for i = 1:N,
        if t1(i)>= -ad,
            y(i) = 1;
        end
    end
end