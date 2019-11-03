myode = @Mecha_springdamper_201314651;
tspan = [0: 0.01: 50];
xinitial = [10 0];
[t,x] = ode45(myode, tspan, xinitial);
figure(1);
plot(t,x(:,1));