% Temperature Calculation for Cold Case

% Given parameters
phi_sun = 1370; % Flux of the sunlight in W/m^2 (not used in cold case)
alpha = 0.8; % Absorptivity
epsilon = 0.9; % Emissivity
sigma = 5.670374419e-8; % Stefan-Boltzmann Constant in W/m^2*K^4
q_earth = 240; % Average Energy flux from Earth in W/m^2
P_internal = 111; % Internal heat generated in W

% Area calculations
A_sat_Earth = 0.58 * 0.47; % Area of the satellite exposed to the Earth in m^2
A_total = 2 * ((1.7 * 0.58) + (1.7 * 0.47) + (0.58 * 0.47)); % Total Area of the satellite in m^2

% Sun Radiation
Q_sun = 0; % No Sun Radiation in cold case

% Albedo Radiation
Q_albedo = 0; % No Albedo Radiation in cold case

% Internal Heat generated (assuming 50% of the total power)
Q_internalC = 0.5 * P_internal;

% Infrared Radiation from Earth
Q_IR_earth = alpha * q_earth * A_sat_Earth;

% Total Heat to be considered
Q_totalinputC = Q_internalC + Q_IR_earth;

% Satellite Surface Temperature for Cold Case
T_satellite_cold = (Q_totalinputC / (epsilon * sigma * A_total))^(1/4);

% Display results
fprintf('Internal Heat (Q_internalC): %.2f W\n', Q_internalC);
fprintf('Infrared Radiation from Earth (Q_IR_earth): %.2f W\n', Q_IR_earth);
fprintf('Total Heat to be considered (Q_totalinputC): %.2f W\n', Q_totalinputC);
fprintf('Total Area of the satellite (A_total): %.4f m^2\n', A_total);
fprintf('Satellite Surface Temperature (T_satellite_cold): %.2f K\n', T_satellite_cold);
fprintf('Satellite Surface Temperature (T_satellite_cold): %.2f °C\n', T_satellite_cold - 273.15);