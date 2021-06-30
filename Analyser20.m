
low_t = min([max_ankle + max_knee + max_hip]);

low_t_pos = find([max_ankle + max_knee + max_hip] == low_t);

nval = 1;

for n = 1:41
    if (nval+1681) < low_t_pos
        
        nval = n*1681;
        
    else
        
        nval = nval;
        
    end
end

mval =1;

for m = 1:41
    if nval + (mval+41) < low_t_pos
        
        mval = m*41;
        
    else
        
        mval = mval;
        
    end
end

pval = low_t_pos - nval - mval;

n = nval/1681
m = mval/41
p = pval

 n = n-21
 m = m-21
 p = p-21

ankle_motion    = deg2rad([40.08+n    40.08+n   24.155+n   8.23+n       12+n      24.155+n]');
knee_motion     = deg2rad([90+m       48.18+m   48.21+m    48.24+m      90+m      90+m]');
hip_motion      = deg2rad([20+p       8.2+p     24.1+p     40+p         60+p      40+p]');

ankle_motion1    = deg2rad([8.23+n       12+n      24.155+n     40.08+n    40.08+n   24.155+n]');
knee_motion1     = deg2rad([48.24+m      90+m      90+m     90+m       48.18+m   48.21+m]');
hip_motion1      = deg2rad([40+p         60+p      40+p     20+p       8.2+p     24.1+p]');