% Parameters selec
clear;

frequency = 4;  % Frequency of the sinusoidal function
amplitude = 2;  % Amplitude of the sinusoidal function
dc_offset = 2;  % DC offset of the sinusoidal function

% Time values
t = linspace(0, 1, 1000);  % Time values from 0 to 2*pi

% Sinusoidal function
sinusoidal_4 = 2 * cos(2 * pi * 4 * t) + dc_offset;
sinusoidal_5 = cos(2 * pi * 5 * t + pi/6);
sinusoidal_7 = cos(2 * pi * 7 * t + pi/4);

mix_sinusoids = sinusoidal_4 + sinusoidal_7 + sinusoidal_5;


figure;

% Plotting
subplot(4, 1, 1);
plot(t, sinusoidal_4, 'LineWidth', 2);
title('Sinusoidal (Cosine) Wave with Frequency 4, DC Offset dc_offset, and Amplitude 2');
xlabel('Time');
ylabel('Amplitude');
grid on;

% Plot the first subplot
subplot(4, 1, 2);
plot(t, sinusoidal_5, 'LineWidth', 2);
title('Sinusoidal (Cosine) Wave with Frequency 7, DC Offset 0, and Amplitude 1');
xlabel('Time');
ylabel('Amplitude');
grid on;

% Plot the third subplot
subplot(4, 1, 3);
plot(t, sinusoidal_7, 'LineWidth', 2);
title('Sinusoidal (Cosine) Wave with Frequency 7, DC Offset 1, and Amplitude 1');
xlabel('Time');
ylabel('Amplitude');
grid on;

% Plot the fourth subplot
subplot(4, 1, 4);
plot(t, mix_sinusoids, 'LineWidth', 2);
title('Sinusoidal (Cosine) Wave with Frequency 7, DC Offset 1, and Amplitude 1');
xlabel('Time');
ylabel('Amplitude');
grid on;






