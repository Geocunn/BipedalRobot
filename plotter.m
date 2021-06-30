L_k = round(length(s.simout2.signals.values) - (length(s.simout2.signals.values)/5)*2);
S_k = (length(s.simout2.signals.values) - L_k) + 1;
S_k = s.simout2.signals.values(S_k:end);
S_k = transpose(S_k);

L_a = round(length(s.simout1.signals.values) - (length(s.simout1.signals.values)/5)*2);
S_a = (length(s.simout1.signals.values) - L_a) + 1;
S_a = s.simout1.signals.values(S_a:end);
S_a = transpose(S_a);

L_h = round(length(s.simout.signals.values) - (length(s.simout.signals.values)/5)*2);
S_h = (length(s.simout.signals.values) - L_h) + 1;
S_h = s.simout.signals.values(S_h:end);
S_h = transpose(S_h);

t = linspace(2,5,L_k);

figure

hold on
grid on
 ylim([-7,7]);
plot(t,S_k)
plot(t,S_a)
plot(t,S_h)
 xlabel('Time (s)')
 ylabel('Torque (Nm)')
 legend('Knee', 'Ankle', 'Hip','location','southeastoutside')
