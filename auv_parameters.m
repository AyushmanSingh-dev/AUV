%% AUV Physical Parameters
clear; clc;

% --- Main Body Properties ---
% Mass of the fully assembled AUV in kilograms
AUV.mass = 45.0; % Placeholder - get from final CAD

% Center of Gravity (CG) location in the body's coordinate system [x, y, z] in meters.
AUV.center_of_gravity = [0.01, 0, -0.02]; % Placeholder - get from final CAD

% Inertia Tensor [Ixx Iyy Izz; Ixy Ixz Iyz] in kg*m^2.
AUV.inertia = [0.5, 0, 0; 0, 2.5, 0; 0, 0, 2.7]; % Placeholder - get from final CAD

% --- Hydrodynamic Properties ---
% Center of Buoyancy (CB) location [x, y, z] in meters.
AUV.center_of_buoyancy = [0, 0, 0]; % Placeholder - get from final CAD

% Submerged volume of the AUV in cubic meters.
AUV.volume = 0.046; % Placeholder (mass / density of water)

% --- Drag Properties ---
% These coefficients define how much resistance the AUV experiences.
% They are unitless and must be determined from experiments or CFD analysis.
% Format: [Surge(X), Sway(Y), Heave(Z)]
AUV.linear_drag_coeffs = [0.8, 1.2, 1.2];

% These coefficients define resistance to rotation.
% Format: [Roll(K), Pitch(M), Yaw(N)]
AUV.angular_drag_coeffs = [0.1, 0.5, 0.5];

% Cross-sectional areas for each direction in meters squared.
% This is the frontal area the water "sees" as the AUV moves.
% Format: [Area_X, Area_Y, Area_Z]
AUV.cross_sectional_areas = [0.07, 0.3, 0.3]; % Placeholders for a 1m x 0.3m cylinder

% --- Environment ---
AUV.water_density = 1025; % kg/m^3 for salt water

disp('AUV parameters loaded into workspace.');
% --- Added Mass Properties ---
% This represents the inertia of the water that must be moved with the AUV.
% These are the diagonal elements of the 6x6 added mass matrix.
% Format: [X_udot, Y_vdot, Z_wdot, K_pdot, M_qdot, N_rdot]
AUV.added_mass = [5.0, 20.0, 20.0, 0.5, 2.0, 2.0]; % Placeholders