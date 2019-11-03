myode = @vanderpol;
tspan = [0: 0.01: 20]
yinitial = [2 0];
[t,y] = ode45(myode, tspan, yinitial);
figure(1)
title('Van der pol system with \mu=5')
subplot(121);
plot(t,y);
subplot(122);
plot(y(:, 1), y(:, 2));
xlabel('y1(t)');
ylabel('y2(t)');
