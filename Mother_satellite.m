%%%%%% Mother satelite 
%%%%%% Created by 27/05/2023

% Mother satellite Parameters
h_M = 20424.2;                                      % Km
r_Msat = R_mars + h_M;                              % km
a_M = r_Msat;                                       % semi-major axis in Km
tf_M = (2*pi*sqrt((a_M^3)/mu_mars));                % Final time
duration_M = [0 tf_M];                                % hr
GMO_angular_velocity = 0.0000709003;                %rad/hr
V_x_M = GMO_angular_velocity * r_Msat;              % km/hr
r_Msat_int = [0 0 r_Msat];                          %km
v_Msat_int = [V_x_M-0.4 0 0];                           %km/hr      
Msat_int = [r_Msat_int v_Msat_int];

%%% Numerical simulation
[time, Msat_values] = ode45(@Mothersat,duration_M,Msat_int);

% Baby sat position and velocity
M_satX = Msat_values(:,1);             %Km
M_satY = Msat_values(:,2) - 20000;     %Km
M_satZ = Msat_values(:,3);             %Km
M_satX_dot = Msat_values(:,4);         %Km/hr
M_satY_dot = Msat_values(:,5);         %Km/hr
M_satZ_dot = Msat_values(:,6);         %Km/hr