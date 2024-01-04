clear all;
close all;
clc;

op = bodeoptions;
op.FreqUnits = 'Hz';
wn = 2*pi*100;
depth=1/10;
Bandwidth=2*pi*50;

sigma1=sqrt((1-sqrt(1+Bandwidth^2/wn^2))/(4*depth^2-2));
sigma2 = depth*sigma1;
Gp = tf([1 2*sigma2*wn wn^2],[1 2*sigma1*wn wn^2]);
bode(Gp,op);
hold on

Gp = tf(1/sqrt(2));
bode(Gp,op);