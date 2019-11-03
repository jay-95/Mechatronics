x=-1:0.01:1;
for n=1:6
    subplot(3,2,n), plot(x,sin(n*pi*x))
end