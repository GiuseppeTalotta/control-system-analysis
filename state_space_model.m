% state_space_model.m
% Definizione del modello nello spazio degli stati

% Parametri del circuito
R1 = 100;
R2 = 100;
L = 50;
C1 = 0.0035;
C2 = 0.0025;

% Matrici di stato
A = [-R1/L,     -1/L,         0;
      1/C1, -1/(R2*C1), -1/(R2*C1);
      0,   -1/(R2*C2), -1/(R2*C2)];

B = [1/L,     0;
     0, 1/(R2*C1);
     0, 1/(R2*C2)];

C = [0 0 1];  % Uscita: tensione su C2
D = [0 0];

% Creazione del sistema nello spazio degli stati
sys_ss = ss(A, B, C, D);

disp('Modello nello spazio degli stati creato correttamente.');
