function X = Two_Link_Manipulator(l1,l2,seta_1,seta_2)
x1 = l1*cos(seta_1);
x2 = l2*cos(seta_1+seta_2);
x = x1 + x2;
y1 = l1*sin(seta_1);
y2 = l2*sin(seta_1+seta_2);
y = y1 + y2;
X = [x1; x; y1; y];