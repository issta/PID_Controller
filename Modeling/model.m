%% modeling and implement a PID controller to Heater model in proteus 
%  Software, the PID is a parallel implemntation.
clear all
clc
%% Calculo de el timepo de simulacion
ttotal = 200;
ks = 1; % ganancia proporcional para encontrar ganancia critica e periodo
%% Identificacion del modelo POMTM
%  Con los valores de simulacion en Proteus se encuentra estos
K = 126;
Tau = 10.035;
T0 = 3.865;
%% Ganancia y freciencia critica
%  Realimentar el sistema con un regulador proporcional que varie
%  Encontrar el punto donde el sistema 
%Kc = 0;
%Tc = 0;
%% Otra opcion del metodo de Ziegler Nichols es encontrar L y T
L = T0;
T = Tau;
%% Valore de ganancia PID
% Para el metodo con L y T
Kp = 1.2*T/L;
Ti = 2*L;
Td = 0.5*L;
% Para el metodo 
%Kp = 0.6*Kc;
%Ti = 0.5*Tc;
%Td = 0.125*Tc;
%%  Valores Proporcional, integral y derivativo
P = Kp;
I = Kp/Ti;
D = Kp*Td;