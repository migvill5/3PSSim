clear, clc;
addpath('func/');
% addpath('src');
addpath('ui');


const = [1.83,...      % Separator's diameter      [m]
         6.10,...      % Length A section          [m]
         1.22,...      % Length B section          [m]
         1.00,...      % Weir height               [m]
         2.4028e-4,... % Water valve const.        [adm]
         212,...       % Water valve coef.         [m3/Pa^0.5]
         101325,...    % Outside pressure valve A  [Pa]
         2.4028E-4,... % Oil valve const.          [adm]
         212,...       % Oil valve coef.           [m3/Pa^0.5]
         101325,...    % Outside pressure valve B  [Pa]
         2.881E-4,...  % Gas valve const.          [adm]
         417,...       % Gas valve coef.           [m3/Pa^0.5]         
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

ini = [0.01;...      % ha0
       0.01;...      % hw0
       0.01;...      % hb0
       101325];      % Pg0
   
qci = 0.0711;        % Oil crude inflow [m3/s] -> 38648 BPD
qwi = 0.1374;        % Water inflow [m3/s] -> 74711 BPD
qgi = 0.4905;        % Gas inflow [m3/s] -> 1.5 MMSCFD 
vpw = 1.0;
vpc = 1.0;
vpg = 1.0;