% Temperature Calculation for Hot Case

% Given parameters
phi_sun = 1370; % Flux of the sunlight in W/m^2
alpha = 0.8; % Absorptivity
epsilon = 0.9; % Emissivity
F = 0.85; % View Factor
sigma = 5.670374419e-8; % Stefan-Boltzmann Constant in W/m^2*K^4
q_earth = 240; % Average Energy flux from Earth in W/m^2
P_internal = 840; % Internal heat generated in W

% Area calculations
A_sat_Sun = 1.7 * 0.58; % Area of the satellite exposed to the Sun in m^2

% Sun Radiation
Q_sun = alpha * phi_sun * A_sat_Sun;

% Albedo Radiation
Q_albedo = alpha * phi_sun * A_sat_Sun * F;

% Earth's Radiation
Q_earth = alpha * q_earth * A_sat_Sun;

% Internal Heat generated (assuming 50% of the total power)
Q_internalH = 0.5 * P_internal;

% Total Heat to be considered
Q_totalinputH = Q_sun + Q_internalH + Q_albedo + Q_earth;

% Total Area of the satellite
A_total = 2 * ((1.7 * 0.58) + (1.7 * 0.47) + (0.58 * 0.47)); % Total Area of the satellite in m^2

% Satellite Surface Temperature for Hot Case
T_satellite_hot = (Q_totalinputH / (epsilon * sigma * A_total))^(1/4);

% Display results
fprintf('Sun Radiation (Q_sun): %.3f W\n', Q_sun);
fprintf('Albedo Radiation (Q_albedo): %.3f W\n', Q_albedo);
fprintf('Earth Radiation (Q_earth): %.3f W/n\n', Q_earth)
fprintf('Internal Heat (Q_internalH): %.3f W\n', Q_internalH);
fprintf('Total Heat to be considered (Q_totalinputH): %.3f W\n', Q_totalinputH);
fprintf('Total Area of the satellite (A_total): %.4f m^2\n', A_total);
fprintf('Satellite Surface Temperature (T_satellite_hot): %.2f K\n', T_satellite_hot);
fprintf('Satellite Surface Temperature (T_satellite_hot): %.2f °C\n', T_satellite_hot - 273.15);