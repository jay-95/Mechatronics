%% Rotate Square
x=[-1 -1 1 1];
y=[-1 1 1 -1];
box=fill(x,y,'r');
grid on;
axis([-2 2 -2 2]);

t=0.25;
ts=t*pi;
Rotation=[cos(ts), -sin(ts); sin(ts) cos(ts)];
next_Position=Rotation*[x;y];
next_x=next_Position(1,:);
next_y=next_Position(2,:);
set(box, 'Xdata', next_x, 'Ydata', next_y);