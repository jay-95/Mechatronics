A = [-2 3 4 4; 0 5 -1 6; 6 8 0 1]
k = find(A == 0)
n = find(A <= 0)
A(n)
m = find(A' == 0)