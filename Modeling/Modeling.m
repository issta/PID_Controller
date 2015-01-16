%% Modelo de primer orden mas tiempo muerto POMTM para Hearter
%  Se realiza una simulacion de del modelo OVE en Proteus
%  Se exporta las curvas del escalon de entrada y la respuesta 
%  del sistema, con estos valores se ecuentra el POMTM basado en el metodo
%  de los dos puntos de Smith
clear all
clc
%% Cargar los datos de simulacion
%  Se llama al script generado por la herramienta de importacion
Load_data3
ttotal = 200;
ks = 1; % ganancia proporcional para encontrar ganancia critica e periodo
%% Grafica de los datos de simulacion
plot(TIME, OV1T);
figure, plot(TIME, SW2NO);
%% Encontrar los tiempos y valores en el 28.3% y 63.2% del valor final

% valores para el primer escalon
tstate = 50.68; % tienpo de escalon de entrada
Ymax = 63.93;
Ymin = 33.26;
Umax = 50;
Umin = 10;

% valores para el segundo escalon
%tstate = 135.6; % tienpo de escalon de entrada
%Ymax = 319;
%Ymin = 151;
%Umax = 2.5;
%Umin = 0.5;

Deltay = Ymax - Ymin; % Delta del cambio de la salida
Deltau = Umax - Umin; % Delta del cambio de la entrada
Kpp = Deltay/Deltau;

y28 = (Deltay*28.3/100) + Ymin;
y63 = (Deltay*63.2/100) + Ymin;
%%
% Encontrar el valor de t28 y t63 manualmente
% valores para primer escalon
t28 = 55.04 - tstate;
t63 = 60.66 - tstate;

% valores para segundo escalon
%t28 = 139.9 - tstate;
%t63 = 146.6 - tstate;

tau = 1.5*( t63 - t28 );
tm  = t63 - tau;
%% Crear la funcion de tranferencia y graficar la respuesta al step
%  Comparar el comportamiento del modelo con los datos de la planta
%% Variables equivalentes con la literatura para el metodo de sintonia
L = tm;
T = tau;
K = Kpp;
%% Funcion de transferencia
s = tf('s');            % Define la variable de Laplace
G = K/(T*s + 1);
%% Sintonizacion del PID por el medoto de ZN
Kp = 1.2*T/L;
Ti = 2*L;
Td = 0.5*L;
%%  Valores Proporcional, integral y derivativo
P = Kp;
I = Kp/Ti;
D = Kp*Td;