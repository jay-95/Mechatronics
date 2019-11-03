x = -1:0.05:1;
y = sin(3*pi*x).*exp(-x.^2);
plot(x,y,':')
hold on

k = find(y > 0.2)
plot(x(k),y(k),'o')

km = find(x>0.5 & y<0)
plot(x(km), y(km), '-')