function dx = my_springdamper(t,x,ex)
m = ex{1};
k = ex{2};
R = ex{3};
sf = ex{4};

x1 = x(1);
x2 = x(2);

dx1 = x2;
dx2 = -k/m*x1-R/m*x2+sf(t,10)/m; % sf�� �ڿ� @(t,power)�� ����, 10�� power ������ ��
dx = [dx1; dx2];