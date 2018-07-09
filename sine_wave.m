% clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.
format long g;
format compact;
fontSize = 20;

% Make 0.1 seconds sampled every 1/1000 of a second
t = 0 : 0.01 : 2.0;

% Define sine wave parameters.
f1 = 5; % per second
T1 = 1/f1; % period, seconds
amp1 = 200; % amplitude
f2 = 2.5; % per second
T2 = 1/f2; % period, seconds
amp2 = 200; % amplitude
f3 = 1; % per second
T3 = 1/f3; % period, seconds
amp3 = 200; % amplitude

shift = 250;

% Make signals.
signal1 = amp1 * sin(2*pi*t/T1) + shift;
signal2 = amp2 * sin(2*pi*t/T2) + shift;
signal3 = amp3 * sin(2*pi*t/T3) + shift;
signal = signal1 + signal2 + signal3;
plot(t, signal1, 'r.-', 'LineWidth', 2, 'MarkerSize', 16);
hold on;
plot(t, signal2, 'm.-', 'LineWidth', 2, 'MarkerSize', 16);
plot(t, signal3, 'g.-', 'LineWidth', 2, 'MarkerSize', 16);
plot(t, signal, 'b.-', 'LineWidth', 2, 'MarkerSize', 16);
grid on;
title('Sine Waves', 'FontSize', fontSize);
xlabel('Time', 'FontSize', fontSize);
ylabel('Signal', 'FontSize', fontSize);
% Make bolder x axis
line(xlim, [0,0], 'Color', 'k', 'LineWidth', 3);
legend('5 Hz', '2.5 Hz', '1 Hz', 'Sum');

% Set up figure properties:
% Enlarge figure to full screen.
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
% Get rid of tool bar and pulldown menus that are along top of figure.
set(gcf, 'Toolbar', 'none', 'Menu', 'none');
% Give a name to the title bar.
set(gcf, 'Name', 'Demo by ImageAnalyst', 'NumberTitle', 'Off') 
