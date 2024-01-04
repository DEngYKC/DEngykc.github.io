clear all;
close all;
clc;

op = bodeoptions;
op.FreqUnits = 'Hz';

k0 = 29.5;
m = 1350;
kz = 1.7747e7;
cz = 1.6434e5;
Gpz_ideal = tf([1 0 0],[m cz kz])*k0;

k0 = 29.5;
m=1350;
k=1.7747e7;
c=1.6434e5;
Gp_Ideal=tf([1 0 0],[m c k])*k0;

load('Test3.mat');
f = FreqTxy(:,1);
w = 2*pi*f;
Gp_Practical = FreqTxy(:,1+3); 
Gp_Practical = frd(Gp_Practical,w);

figure(1)
bode(Gp_Ideal,op);
hold on
bode(Gp_Practical,op);
hold off