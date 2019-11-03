function dxdt=Mecha_Lorenz_201314651(t,x)
x1 = x(1);
x2 = x(2);
x3 = x(3);
a = 10;
b = 28;
c = 8/3;
dxdt = [a*(x2-x1); b*x1-x1*x3-x2; x1*x2-c*x3];