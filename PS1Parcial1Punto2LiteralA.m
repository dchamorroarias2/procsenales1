%%Punto 2: Si una señal original es u(t), graficar las siguientes funciones
%%Literal A: u(1/3(t-0.5))

clc;
clear;
close all;

t1=-5:0.01:9;
y1=1*ustep(0.33*t1,-0.5);
y=y1;
plot(t1,y,'linewidth',2,'color','blue');
set(gcf,'name','FUNCION MATEMATICA DE SEÑALES BASICAS','numbertitle','off')
axis([-2 6 -1 5]);
title('a)   u(^{1}/_{3}(t-0.5))','color','red');

function y = ustep(t1,ad)
                                                                            
N= length(t1);
y = zeros(1,N);
    for i = 1:N,
        if t1(i)>= -ad,
            y(i) = 1;
        end
    end
end