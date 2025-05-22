% bode_plot.m
% Plot del diagramma di Bode

if ~exist('sys_ss', 'var')
    run('state_space_model.m');
end

figure;
bode(sys_ss);
grid on;
title('Diagramma di Bode');
