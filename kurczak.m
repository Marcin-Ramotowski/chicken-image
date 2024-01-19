% Rysunek kurczaka wielkanocnego
% Marcin Ramotowski Grupa nr 1

% niebo
max_x = 3*pi;
max_y = 6;
x = [0 max_x max_x 0];
y = [max_y max_y 0 0];
sky_color = [0.5294, 0.8078, 0.9216];
fill(x, y, sky_color);
hold on;

% słońce
x_center = 0.6;
y_center = 5.4;
r = 0.5;
theta = linspace(0, 2*pi, 100);
x = r*cos(theta) + x_center;
y = r*sin(theta) + y_center;
fill(x, y, 'y');

% Chmury
r = 0.5;
x_center = 3.5;
y_center = 5;
theta = linspace(0, 2*pi, 100);
x = r*cos(theta) + x_center;
y = r*sin(theta) + y_center;
cloud_color = 'w';
x_positions = [0.2 -0.2 0.3 -0.3 0.9 0.5 1 0.6 2.9 2.5 3 2.6 3.8 3.4 3.9 3.5 4.8 4.4 4.9 4.5];

for i=1:length(x_positions)
    if mod(i,4) == 0 || mod(i,4) == 3
        fill(x+x_positions(i), y-0.2, cloud_color)
    else
        fill(x+x_positions(i), y+0.2, cloud_color)
    end
end

% pagórki
x = linspace(0, 3*pi, 100);
y = 3*sin(x);
y(y<0) = 0; % ustawiamy ujemne wartości funkcji y na zero
fill(x, y, 'g');

% ziemia
x_dirt = [0 3*pi 3*pi 0];
y_dirt = [0 0 -1 -1];
fill(x_dirt, y_dirt, [0.8 0.5 0.2]);

% głowa
x_head = 1.3*pi;
y_head = 1.2 + 0.5;
r = 0.5;
theta = linspace(0, 2*pi, 100);
x = r*cos(theta) + x_head;
y = r*sin(theta) + y_head;
fill(x, y, 'y');

% Oczy
r_eye = 0.08;
r_pupil = 0.03;
x_eye = x_head + r_eye*cos(5*pi/4) - 0.2;
y_eye = y_head + r_eye*sin(4*pi/4) + 0.1;
fill(x_eye + r_eye*cos(theta), y_eye + r_eye*sin(theta), 'w');
fill(x_eye + r_pupil*cos(theta), y_eye + r_pupil*sin(theta), 'k');

% Dziób
x_beak = [x_head-0.46 x_head-0.7 x_head-0.5];
y_beak = [y_head-0.2 y_head-0.1 y_head];
fill(x_beak, y_beak, 'r');

% Tułów
x_body = x_head + 1;
y_body = y_head - 0.5;
r = 0.7;
theta = linspace(0, 2*pi, 100);
x = r*cos(theta) + x_body;
y = r*sin(theta) + y_body;
fill(x, y, 'y');

% Skrzydło
r_wing = 0.3;
x_wing = x_body;
y_wing = y_body;
theta_wing = linspace(-pi/2, pi/2, 100);
x_wing1 = x_body - r_wing*cos(theta_wing);
y_wing1 = y_body + r_wing*sin(theta_wing);
x_wing2 = x_body + r_wing*cos(theta_wing);
y_wing2 = y_body + r_wing*sin(theta_wing);
fill(x_wing1, y_wing1, 'y');

% Nogi
x_leg = [x_body-0.1 x_body-0.1 x_body+0.1 x_body+0.1];
y_leg = [0 0.51 0.51 0];
fill(x_leg, y_leg, 'y');
x_foot = [x_body-0.1 x_body-0.1 x_body-0.3 x_body-0.3];
y_foot = [0 0.11 0.11 0];
fill(x_foot, y_foot, 'r')

hold off;
xlim([0, max_x]);
ylim([-1, max_y]);
axis equal;
axis off;