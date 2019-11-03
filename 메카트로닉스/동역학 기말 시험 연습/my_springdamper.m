function dx = my_springdamper(t,x,ex)
m = ex{1};
k = ex{2};
R = ex{3};
sf = ex{4};

x1 = x(1);
x2 = x(2);

dx1 = x2;
dx2 = -k/m*x1-R/m*x2+sf(t,10)/m; % sf는 뒤에 @(t,power)랑 대응, 10은 power 변수의 값
dx = [dx1; dx2];