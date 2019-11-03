N = 100;
h = 1/N;
x = 0: h: 1;
y = sin(3*pi*x);
z = cos(3*pi*x);
plot(x,y,'b-',x,z,'g--')
legend('Sin curve', 'Cos curve')
title('Multi-plot')
xlabel('x axis')
ylabel('y axis')
grid