function mysd()
st = 0.01;
final = 50;
tspan=0:st:final;
initial = [0 0];

m = 10;
k = 10;
R = 1;
f = @(t,power) power*heaviside(t)-power*heaviside(t-2*st); % Step Function으로 Imperse Response 만들기
ex = {m,k,R,f};
[t,x] = ode45(@my_springdamper,tspan,initial,[],ex);
plot(t,x(:,1));
xlabel('time');
ylabel('Displacement x(t)');
title('Spring-Damper system with impulse external input')
end