clear all;
close all;
clc;


op = bodeoptions;
op.FreqUnits = 'Hz';
m=1000;
k=1.8e7;
c=1.6e5;
Gp=tf([1 0 0],[m c k]);
bode(Gp,op);
