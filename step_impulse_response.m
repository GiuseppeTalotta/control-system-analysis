% step_impulse_response.m
% Risposte al gradino e all'impulso

if ~exist('sys_ss', 'var')
    run('state_space_model.m');
end

figure;
subplot(2,1,1);
step(sys_ss);
title('Risposta al gradino');
grid on;

subplot(2,1,2);
impulse(sys_ss);
title('Risposta all''impulso');
grid on;
