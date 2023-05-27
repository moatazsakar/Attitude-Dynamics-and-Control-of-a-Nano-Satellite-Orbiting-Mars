%%%%%% Baby satelite 
%%%%%% Created by 27/05/2023

% Baby satellite Parameters
h = 400;                                            % Km
r_Bsat = R_mars + h;                                % km
a = r_Bsat;                                         % semi-major axis in Km
tf = (2*pi*sqrt((a^3)/mu_mars));                    % Final time
duration = [0 tf];                                  % hr
LMO_angular_velocity = 0.000884797;                 %rad/hr
V_x = LMO_angular_velocity * r_Bsat;                % km/hr
r_Bsat_int = [0 0 r_Bsat];                          %km
v_Bsat_int = [V_x 0 0];                             %km/hr     
Bsat_int = [r_Bsat_int v_Bsat_int];

%%% Numerical simulation
[time, Bsat_values] = ode45(@Babysat,duration,Bsat_int);

% Baby sat position and velocity
B_satX = Bsat_values(:,1);             %Km
B_satY = Bsat_values(:,2);             %Km
B_satZ = Bsat_values(:,3);             %Km
B_satX_dot = Bsat_values(:,4);         %Km/hr
B_satY_dot = Bsat_values(:,5);         %Km/hr
B_satZ_dot = Bsat_values(:,6);         %Km/hr


