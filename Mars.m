%%%%%%%% Mars model
%%%%%%%% Created by 27/05/2023

% mars radius from the center 
R_mars = 3396.19;     % Km

% mars parameters
mu_mars = 42828.3;    % Km^3/s^2

% Create 3D sphere
[X Y Z] = sphere(100);

% Mars coordinates
x = R_mars * X;
y = R_mars * Y;
z = R_mars * Z;

% Load the mars texture image
image = imread('mars_texture.png');

% Plot 
surf(x,y,z,'CData',image, 'FaceColor', 'texturemap', 'EdgeColor', 'none');

% View adjustement
view(3)

% axes adjustement
axis on

% add Title
title('Attitude Dynamics and Control of a Nano-Satellite Orbiting Mars')