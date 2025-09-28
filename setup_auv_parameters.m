% AUV Simulation Parameter Script

%% Vehicle Properties
AUV_mass = 43.80128; % Mass of the AUV (kg)
AUV_volume = 0.01729313024; % Displaced volume of the AUV (m^3)

% Example positions for COG and COB
center_of_gravity = [0.1488 -0.74949 0.90546]; % [x,y,z] in meters
center_of_buoyancy = [0.1488 -0.74949 0.90546]; % [x,y,z] in meters
%Thruster position
co1=[0.04207 -0.37377 -0.14593]-center_of_gravity;
co2=[0.04207 -0.37223 -0.14593]-center_of_gravity;
co3=[0.04152 -0.00077 -0.34248]-center_of_gravity;
co4=[0.598 0.02243 -0.02538]-center_of_gravity;
co5=[-0.55567 0.02243 -0.02538]-center_of_gravity;
co6=[0.04152 -0.00077 -0.35272]-center_of_gravity;
%Thruster direction
do1=[0 0 1];
do2=[0 0 1];
do3=[1 0 0];
do4=[0 1 0];
do5=[0 1 0];
do6=[1 0 0];

%% Environmental Properties
gravity_accel = 9.81; % Acceleration due to gravity (m/s^2)
water_density = 1025; % Density of saltwater (kg/m^3)

%% Simulation Settings
simTime = 120; % Simulation stop time (s)

disp('AUV parameters loaded into workspace.');