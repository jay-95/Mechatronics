%% Animation
x=[-1 -1 1 1];
y=[-1 1 1 -1];
box=fill(x,y,'r');
grid on;
hold on;
origin=text(x(1,1),y(1,1),'O');  % (-1,-1)�� origin���� ����
axis([-2 2 -2 2]);

for t=0:0.01:2*pi % 0������ 2*pi���� �� ���� ȸ��
    Rotation=[cos(t), -sin(t); sin(t) cos(t)]; % ȸ�����
    next_Position=Rotation*[x;y]; % t�� ������ �� ������ ��ġ
    next_x=next_Position(1,:);
    next_y=next_Position(2,:);
    set(box, 'Xdata', next_x, 'Ydata', next_y);
    % box Ŭ�������� Xdata, Ydata �Ӽ��� �ش��ϴ� ���� next_x, next_y �� �־ ����
    set(origin, 'Position', [next_x(1,1), next_y(1,1)]);
    % origin Ŭ�������� Position �Ӽ��� �ش��ϴ� ���� ���ο� �Ӽ��� �־ ����
    drawnow; % i�� �����԰� ���ÿ� �ǽð����� �׸��� �׸�
    for i=1:5000000 % �� for ���� �ӵ��� ������ �ϱ� ���� ����
        temp=i;
    end
end