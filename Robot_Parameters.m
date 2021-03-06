% Robot Parameters

%% General Parameters
body_density = 0.514;
leg_density = 2.471;
foot_density = 0.7;
world_damping = 0.25;
world_rot_damping = 0.25;
if ~exist('actuatorType', 'var')
    actuatorType = 1;
end

%% Inputs
gait_period = 1.5;
time = linspace(0,gait_period,6);
ankle_motion    = deg2rad([40.08    40.08   24.155   8.23       12      24.155]);
knee_motion     = deg2rad([90       48.18   48.21    48.24      90      90]);
hip_motion      = deg2rad([20       8.2     24.1     40         60      40]);

ankle_motion1    = deg2rad([8.23       12      24.155   40.08    40.08   24.155]);
knee_motion1     = deg2rad([48.24      90      90       90       48.18   48.21]);
hip_motion1      = deg2rad([40         60      40       20       8.2     24.1]);

%% Actuator Constants
motion_time_constant = 0.01;

%% plane
plane_x = 1000;
plane_y = 75;
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
body_pos_z = -4;

height = (body_y/2) - body_pos_z + upper_leg_length + (plane_z/2) + lower_leg_length + 2*(foot_z);
