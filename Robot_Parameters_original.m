% Robot Parameters

%% General Parameters
density = 1000;
foot_density = 2000;
world_damping = 0.25;
world_rot_damping = 0.25;
if ~exist('actuatorType', 'var')
    actuatorType = 1;
end

%% Inputs
gait_period = 1;
time = linspace(0,gait_period,7);
ankle_motion = deg2rad([-7.5; 10; 10; 5; 0; -10; -7.5]);
knee_motion = deg2rad([10, -5, 2.5, -10, -10, 15, 10]');
hip_motion = deg2rad([-10, -7.5, -15, 10, 15, 10, -10]');

%% Actuator Constants
motion_time_constant = 0.01;

%% plane
plane_x = 2500;
plane_y = 300;
plane_z = 2.5;

%% Leg Parameters
leg_radius = 0.75;
lower_leg_length = 10;
upper_leg_length = 10;

%% Foot Parameters
foot_x = 8;
foot_y = 6;
foot_z = 1;

foot_offset = [-1 0 0];

%% Body Parameters
body_x = 10;
body_y = 5;
body_z = 15;

body_pos_x = 5;
body_pos_y = 0.5;
body_pos_z = 2;

height = (body_y/2) - body_pos_z + upper_leg_length + (plane_z/2) + lower_leg_length + 2*(foot_z);