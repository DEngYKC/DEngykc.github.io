clc

Rload=6.5;
Vcc=52;
Vin=13;
Iq=0.017;

syms x

fD = 4*Vin*sin(x)/Rload*(0.5*Vcc-13/6*Vin*sin(x))+4*Vin*sin(x)/Rload*(0.5*Vcc-11/6*Vin*sin(x));
fL = 4*Vin*sin(x)*4*Vin*sin(x)/Rload;

PD = 2*int(fD,0,pi)/(2*pi);
PL = int(fL,0,2*pi)/(2*pi);

Efficiency=PL/(PD+PL);

fprintf('PD is %8.4f\n',PD)
fprintf('PL is %8.4f\n',PL)
fprintf('Efficiency(Ideal) is%8.4f\n',Efficiency)

PQ = 4*Vcc*Iq;

Efficiency=PL/(PD+PL+PQ);

fprintf('PD is %8.4f\n',PD)
fprintf('PL is %8.4f\n',PL)
fprintf('PQ is %8.4f\n',PQ)
fprintf('Efficiency is%8.4f\n',Efficiency)
