% Solar Panel Power and Array Size Calculation

% Given parameters
torbital_period = 1.68; % hours
tsunlight = 1.11; % hours
teclipse = 0.57; % hours
PF = 0.9; % Solar Panel Packing Factor
efficiency_solarpanel = 0.3; % Solar panel efficiency
annual_degradation_factor = 0.02; % Annual degradation factor
operational_period_years = 3; % Operational period in years

% Power consumed during the sunlight period
Psunlight = 840; % W
% Energy consumed during the sunlight period in Watt-hours
Esunlight = Psunlight * tsunlight;

% Power consumed during the eclipse period
Peclipse = 111; % W
% Energy consumed during the eclipse period in Watt-hours
Eeclipse = Peclipse * teclipse;

% Power consumed during one orbital period
Porbit = Psunlight + Peclipse;

% Total Energy consumption over one Orbital Period in Wh
Eorbit = Esunlight + Eeclipse;

% Average Power Consumption over one Orbital Period in Wh
Paverage = Eorbit / torbital_period;

% Total degradation for three years
TD = (1 - annual_degradation_factor) ^ operational_period_years;

% Power required with degradation
Prequired = Paverage / TD;

% Effective power considering packing factor
Peffective = Prequired / PF;

% Solar panel area
A_solar = Peffective / (efficiency_solarpanel * 1370); % Solar constant is approximately 1370 W/m^2

% Display results
fprintf('Energy consumed during the sunlight period (Esunlight): %.2f Wh\n', Esunlight);
fprintf('Energy consumed during the eclipse period (Eeclipse): %.2f Wh\n', Eeclipse);
fprintf('Power consumed during one orbital period (Porbit): %.2f W\n', Porbit);
fprintf('Total Energy consumption over one Orbital Period (Eorbit): %.2f Wh\n', Eorbit);
fprintf('Average Power Consumption over one Orbital Period (Paverage): %.2f W\n', Paverage);
fprintf('Total degradation for three years (TD): %.3f\n', TD);
fprintf('Power required with degradation (Prequired): %.2f W\n', Prequired);
fprintf('Effective power considering packing factor (Peffective): %.2f W\n', Peffective);
fprintf('Solar panel area (A_solar): %.2f m^2\n', A_solar);