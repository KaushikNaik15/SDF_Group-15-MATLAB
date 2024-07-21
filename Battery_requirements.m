% Battery Requirements Calculation

% Given parameters
V_battery = 28.8; % Battery voltage in V
DoD = 0.8; % Depth of Discharge
E_orbit = 995.67; % Total Energy consumption over one Orbital Period in Wh
P_average = 593.66; % Average power consumption over one Orbital Period in W
teclipse = 0.57; % Eclipse period in hours

% Total Energy consumption during the eclipse period in Joules
E_eclipse_J = P_average * teclipse * 3600; % Convert hours to seconds
% Convert Joules to Watt-hours
E_eclipse_Wh = E_eclipse_J / 3600;

% Adjusting for Depth of Discharge
Eusable = E_eclipse_Wh / DoD;

% Battery Capacity required in Watt-hours
Capacity_Wh = Eusable;

% Battery Capacity required in Ampere-hours (Ah)
Capacity_Ah = Capacity_Wh / V_battery;

% Number of seconds for an operational period of 3 years
t_operational_seconds = 3 * 365 * 24 * 3600; % 3 years in seconds

% Orbital period in seconds
t_orbital_seconds = 6037.8; % Orbital period in seconds

% Battery cycles for 3 years of operational period
t_battery_cycles = t_operational_seconds / t_orbital_seconds;

% Display results
fprintf('Total Energy consumption during the eclipse period (E_eclipse_Wh): %.2f Wh\n', E_eclipse_Wh);
fprintf('Energy usable considering DoD (Eusable): %.2f Wh\n', Eusable);
fprintf('Battery Capacity required in Watt-hours (Capacity_Wh): %.2f Wh\n', Capacity_Wh);
fprintf('Battery Capacity required in Ampere-hours (Capacity_Ah): %.2f Ah\n', Capacity_Ah);
fprintf('Battery cycles for 3 years of operational period (t_battery_cycles): %.0f cycles\n', t_battery_cycles);