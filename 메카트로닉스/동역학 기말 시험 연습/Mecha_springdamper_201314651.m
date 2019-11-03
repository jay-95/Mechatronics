function dxdt=Mecha_springdamper_201314651(t,x)
x1 = x(1);
x2 = x(2);
m = 10;
k = 10;
R = 1;
dxdt = [0 1; -(k/m) -(R/m)]*x;