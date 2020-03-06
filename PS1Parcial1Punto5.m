%%Punto 5: Graficar la siguiente función:
%%y(t) = 2tri(t-1) + tri((t-2)/2) + dirac(t+3) + u(t-3) + ramp(3t-6)

clc; 
clear;
close all;

t1=-5:0.0001:9;
y1=tri(t1,2,-1);
y2=tri(t1/2,1,-1);
y3=impulse(t1,+3);
y4=ustep(t1,-3);
y5=ramp(3*t1,1,-6);
y=y1+y2+y3+y4+y5;
plot(t1,y,'linewidth',2,'color','blue');
set(gcf,'name','FUNCION MATEMATICA DE SEÑALES BASICAS','numbertitle','off')
axis([-5 5 -1 10]);
title('y(t) = 2tri(t-1) + tri(^{(t - 2)}/{2}) + \delta(t+3) + u(t-3) + ramp(3t-6)','color','red');
grid on;


function y = ramp(t1,m,ad)
                                                                            
N= length(t1);
y = zeros(1,N);
    for i = 1:N,
        if t1(i)>= -ad,
            y(i) =m* (t1(i)+ad);
        end
    end
end

function y = ustep(t1,ad)
                                                                            
N= length(t1);
y = zeros(1,N);
    for i = 1:N,
        if t1(i)>= -ad,
            y(i) = 1;
        end
    end
end

function y = impulse(t1,ad)
                                                                           
N= length(t1);
y = zeros(1,N);
    for i = 1:N,
        if t1(i)== -ad,
            y(i) = 1000;
        end
    end
end
function y = tri(t1,m,ad)
    y = m*( ramp(t1,m,ad+1) - 2*ramp(t1,m,ad) + ramp(t1,m,ad-1) );
end