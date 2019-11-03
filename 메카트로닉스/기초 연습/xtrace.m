x = pi/4*(1:3)'
A = [sin(x), sin(2*x), sin(3*x)]/sqrt(2)
s1 = sum(A.^2)
s2 = sum(s1)

A*A'
trace(A)
trace(A'*A)