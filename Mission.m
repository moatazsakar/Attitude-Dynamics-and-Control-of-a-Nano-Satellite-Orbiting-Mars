%%%%%% Mission 
%%%%%% Created by 27/05/2023

clear;clc;clf;

% models run
run('Mars.m')
run('Baby_satellite.m')
run('Mother_satellite.m')
% Plot Baby sat orbit
hold on
plot3(B_satX,B_satY,B_satZ,'r')
% Plot Baby sat orbit
hold on
plot3(M_satX,M_satY,M_satZ,'g')