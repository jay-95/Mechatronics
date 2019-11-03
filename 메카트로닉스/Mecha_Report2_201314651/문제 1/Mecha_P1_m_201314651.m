myode = @Mecha_Lorenz_201314651;
tspan = [0: 0.01: 50];
xinitial = [0.1 0.5 -1];
[t,x] = ode45(myode, tspan, xinitial);
figure(3);
plot(t,x);
figure(4);
plot3(x(:,1),x(:,2),x(:,3));
