[x,y]=meshgrid(2:0.2:4, 1:0.2:3);

z=(x-3).^2-(y-2).^2;

contour(x,y,z)

hold on

a = find(~z)

for n=1:17

    text(x(a(n)), y(a(n)),'Z')

end

b = find(z==max(max(z)))

for m=1:2

    text(x(b(m)), y(b(m)),'M')

end

c = find(z==min(min(z)))

for l=1:2

    text(x(c(l)), y(c(l)),'m')

end