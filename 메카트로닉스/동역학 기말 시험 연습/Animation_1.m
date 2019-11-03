%% Animation
x=[-1 -1 1 1];
y=[-1 1 1 -1];
box=fill(x,y,'r');
grid on;
hold on;
origin=text(x(1,1),y(1,1),'O');  % (-1,-1)을 origin으로 놓음
axis([-2 2 -2 2]);

for t=0:0.01:2*pi % 0도에서 2*pi까지 한 바퀴 회전
    Rotation=[cos(t), -sin(t); sin(t) cos(t)]; % 회전행렬
    next_Position=Rotation*[x;y]; % t도 돌았을 때 꼭지점 위치
    next_x=next_Position(1,:);
    next_y=next_Position(2,:);
    set(box, 'Xdata', next_x, 'Ydata', next_y);
    % box 클래스에서 Xdata, Ydata 속성에 해당하는 값을 next_x, next_y 값 넣어서 실행
    set(origin, 'Position', [next_x(1,1), next_y(1,1)]);
    % origin 클래스에서 Position 속성에 해당하는 값에 새로운 속성을 넣어서 실행
    drawnow; % i가 증가함과 동시에 실시간으로 그림을 그림
    for i=1:5000000 % 위 for 문의 속도를 느리게 하기 위해 삽입
        temp=i;
    end
end