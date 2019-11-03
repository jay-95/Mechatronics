function dydt=vanderpol(t,y)
y1 = y(1);
y2 = y(2);
mu = 5;
dydt = [y2; mu*(1-y1^2)*y2-y1];