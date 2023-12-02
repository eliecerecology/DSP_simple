% Parameters
duration = 0.5;        % Duration of the sound in seconds
fs = 8000;            % Sampling frequency (in Hz)
frequency = 440;       % Frequency of the sine wave (in Hz)

% Time vector
t = linspace(0, duration, duration * fs);

% Notes
notes = [52, 59, 59, 61, 59, 57, 57, 56, 56, 54, 54, 56, 52, 59, 57, 57, 56, 56, 54, 54];

len = length(notes);

f = 440 * 2^((notes(1) - 49) / 12);

fprintf('number = %d, frequency = %f\n', notes(1), f);

output = cos(2 * pi * f * t);

i = 1;
while i < len
    f = 440 * 2^((notes(i) - 49) / 12); 
    fprintf('number = %d, frequency = %f\n', notes(i), f);
    x = cos(2 * pi * f * t(1:length(t)));  % Adjusting the length of t
    output = [output, x];

    i = i + 1;
end

audiowrite('sine_wave4.wav', output, fs);