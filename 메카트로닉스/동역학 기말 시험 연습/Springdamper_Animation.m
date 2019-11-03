% Springdamper Animation
initial = [1 0];
x0 = initial(1);
boxsize = 2;
box_x = [x0-boxsize/2 x0-boxsize/2 x0+boxsize/2 x0+boxsize/2];
box_y = [0 boxsize boxsize 0];
box = fill(box_x,box_y,'r');
hold on

% 땅, 기준선 만들기
horizon_x = [-15 -15 15 15];
horizon_y = [0 -0.1 -0.1 0];
horizon = fill(horizon_x, horizon_y, 'black')

% 벽 만들기
vertical_x = [-15 -15 -10 -10];
vertical_y = [4 0 0 4];
vertical = fill(vertical_x, vertical_y, 'green')

axis([-15 15 -2 20]);
grid on;

tspan = 0: 0.01: 100;
[t, x] = ode45(@Mecha_springdamper_201314651, tspan, initial);

for i = 1: max(size(t))
    next_x = [x(i)-boxsize/2 x(i)-boxsize/2 x(i)+boxsize/2 x(i)+boxsize/2];
    set(box, 'Xdata', next_x);
    drawnow;
    for j = 1:500
        temp = j;
    end
end