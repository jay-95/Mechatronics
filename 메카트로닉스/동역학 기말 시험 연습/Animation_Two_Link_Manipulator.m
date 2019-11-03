initial_seta = [0 0];
l1 = 5;
l2 = 5;
initial_x = [5 10];
initial_y = [0 0];
link1_x = [0 initial_x(1)];
link1 = line(link1_x,initial_y,'Color','red','LineWidth',10);

link2_x = [initial_x(1), initial_x(2)];
link2 = line(link2_x,initial_y,'Color','red','LineWidth',10);

hold on

% 땅, 기준선 만들기
horizon_x = [-15 -15 15 15];
horizon_y = [0 -0.1 -0.1 0];
horizon = fill(horizon_x, horizon_y, 'black');

axis([0 15 -0.4 15]);
grid on;

t1 = 0 : 0.01: 50;
seta1 = (1/200)*pi*t1;
seta2 = (1/100)*pi*t1;
X = Two_Link_Manipulator(l1,l2,seta1,seta2);
x1 = X(1,:);
x2 = X(2,:);
y1 = X(3,:);
y2 = X(4,:);

for i = 1: max(size(t1))
    next_link1_x = [0, x1(i)];
    next_link1_y = [0, y1(i)];
    set(link1, 'XData', next_link1_x, 'YData', next_link1_y);
    next_link2_x = [x1(i), x2(i)];
    next_link2_y = [y1(i), y2(i)];
    set(link2, 'XData', next_link2_x,'YData', next_link2_y);
   
    drawnow
    
end