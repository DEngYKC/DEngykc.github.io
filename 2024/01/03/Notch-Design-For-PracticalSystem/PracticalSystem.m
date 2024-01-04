clear all;
close all;
clc;

op = bodeoptions;
op.FreqUnits = 'Hz';
load('Test3.mat');
f = FreqTxy(:,1);
w = 2*pi*f;
Gp = FreqTxy(:,1+3); 
Gp = frd(Gp,w);
bode(Gp,op);
