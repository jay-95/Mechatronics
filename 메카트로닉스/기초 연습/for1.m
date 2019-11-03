x=-1:0.01:1;
figure;
hold on
for n=1:6
    plot(x,sin(n*pi*x))
end
hold off