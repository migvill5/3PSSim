clear, clc;
addpath('func/');
% addpath('src');
addpath('ui');


const = [1.83,...      % Separator's diameter      [m]
         6.10,...      % Length A section          [m]
         1.22,...      % Length B section          [m]
         0.80,...      % Weir height               [m]
         3.30e-3,...   % Water valve coef.         [m3/s Pa^0.5]
         101325,...    % Outside pressure valve A  [Pa]
         9.64e-4,...   % Oil valve coef.           [m3/Pa^0.5]
         101325,...    % Outside pressure valve B  [Pa]
         9.83e-4,...   % Gas valve coef.           [m3/Pa^0.5]         
         101325,...    % Outside pressure valve C  [Pa]
         920,...       % Oil density               [kg/m3]
         0.9218,...    % Oil Specific gravity      [adm]
         997,...       % Water density             [kg/m3]
         0.9970,...    % Water Specific gravity    [adm]
         32.74,...     % Gas molar mass            [g/mol]
         28.96,...     % Air molar mass            [g/mol]
         9.81,...      % Gravity constant          [m/s2]
         355.37,...    % Temperature               [K]  (180°F)
         ];

ini = [0.05;...      % hc0
       0.05;...      % hw0
       0.01;...      % hb0
       101325];      % Pg0
   
qci = 0.0711;        % Oil crude inflow [m3/s] -> 38648 BPD
qwi = 0.1374;        % Water inflow [m3/s] -> 74711 BPD
qgi = 0.4905;        % Gas inflow [m3/s] -> 1.5 MMSCFD 
vpw = 1.0;
vpc = 1.0;
vpg = 1.0;

