%%Punto 2: Si una señal original es u(t), graficar las siguientes funciones
%%Literal C: 5u(-1/5(3t+3/5))

clc;
clear;
close all;

t1=-5:0.01:9;
y1=5*ustep(-0.6*t1,0.12);
y=y1;
plot(t1,y,'linewidth',2,'color','blue');
set(gcf,'name','FUNCION MATEMATICA DE SEÑALES BASICAS','numbertitle','off')
axis([-1 2 -1 6]);
title('c)   5u(-^{1}/_{5}(3t + ^{3}/_{5}))','color','red');

function y = ustep(t1,ad)
                                                                            
N= length(t1);
y = zeros(1,N);
    for i = 1:N,
        if t1(i)>= -ad,
            y(i) = 1;
        end
    end
end