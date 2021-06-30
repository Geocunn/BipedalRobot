
loop_number = 0;
tic

for n = [-20:20] 
    for m = [-20:20]
        for p = [-20:20]
            
            loop_number = loop_number + 1

            ankle_motion    = deg2rad([40.08+n    40.08+n   24.155+n   8.23+n       12+n      24.155+n]');
            knee_motion     = deg2rad([90+m       48.18+m   48.21+m    48.24+m      90+m      90+m]');
            hip_motion      = deg2rad([20+p       8.2+p     24.1+p     40+p         60+p      40+p]');
            
            ankle_motion1    = deg2rad([8.23+n       12+n      24.155+n   40.08+n    40.08+n   24.155+n]);
            knee_motion1     = deg2rad([48.24+m      90+m      90+m       90+m       48.18+m   48.21+m]);
            hip_motion1      = deg2rad([40+p         60+p      40+p       20+p       8.2+p     24.1+p]);


            s = sim('simple_robot');
            try
                torque_hip      = s.simout.signals.values(510:end);
                torque_knee     = s.simout1.signals.values(510:end);
                torque_ankle    = s.simout2.signals.values(510:end);
            catch 
                torque_hip      = 99;
                torque_knee     = 99;
                torque_ankle    = 99;
                
            end
            torque = abs(torque_hip) + abs(torque_knee) + abs(torque_ankle);
            
            max_hip(loop_number,1)     = max(abs(torque_hip));
            max_knee(loop_number,1)    = max(abs(torque_knee));
            max_ankle(loop_number,1)   = max(abs(torque_ankle));
            
            max_torque(loop_number,1) = max([max_hip(loop_number,1), max_knee(loop_number,1), max_ankle(loop_number,1)]);
          
            max_sum(loop_number,1) = max(torque);
           
        end
    end
end

toc