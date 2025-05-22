% transfer_function_analysis.m
% Calcolo della funzione di trasferimento

% Assicurati che il sistema sia già definito
if ~exist('sys_ss', 'var')
    run('state_space_model.m');
end

% Conversione in funzione di trasferimento
sys_tf = tf(sys_ss);

% Visualizzazione
disp('Funzione di trasferimento:');
sys_tf
