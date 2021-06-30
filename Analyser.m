
low_t = min(max_hip);

low_t_pos = find(max_hip == low_t);

ival = 1;

for i = 1:21
    if (ival+441) < low_t_pos
        
        ival = i*441;
        
    else
        
        ival = ival;
        
    end
end

jval =1;

for j = 1:21
    if ivval + (jval+21) < low_t_pos
        
        jval = j*21;
        
    else
        
        jval = jval;
        
    end
end

kval = low_t_pos - ival - jval;

i = ival/441;
j = jval/21;
p = kval;

 i = i-11;
 j = j-11;
 p = p-11;

ankle_motion    = deg2rad([40.08+i    40.08+i   24.155+i   8.23+i       12+i      24.155+i]');
knee_motion     = deg2rad([90+j       48.18+j   48.21+j    48.24+j      90+j      90+j]');
hip_motion      = deg2rad([20+p       8.2+p     24.1+p     40+p         60+p      40+p]');

ankle_motion1    = deg2rad([8.23+i       12+i      24.155+i     40.08+i    40.08+i   24.155+i]');
knee_motion1     = deg2rad([48.24+j      90+j      90+j     90+j       48.18+j   48.21+j]');
hip_motion1      = deg2rad([40+p         60+p      40+p     20+p       8.2+p     24.1+p]');

clear('i','j','k');