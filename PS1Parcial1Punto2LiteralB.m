%%Punto 2: Si una señal original es u(t), graficar las siguientes funciones
%%Literal B: 3u(3-t))

clc;
clear;
close all;

t1=-5:0.01:9;
y1=3*ustep(-t1,3);
y=y1;
plot(t1,y,'linewidth',2,'color','blue');
set(gcf,'name','FUNCION MATEMATICA DE SEÑALES BASICAS','numbertitle','off')
axis([-1 8 -1 4]);
title('b)   3u(3-t)','color','red');

function y = ustep(t1,ad)
                                                                           
N= length(t1);
y = zeros(1,N);
    for i = 1:N,
        if t1(i)>= -ad,
            y(i) = 1;
        end
    end
end