x=pi/5;

RS = cos(x)^5
LS = cos(x)*cos(x)*cos(x)*cos(x)*cos(x)
%===========================================

if (RS == LS)
    disp('좌변과 우변이 일치함')
else
    disp('좌변과 우변이 일치하지 않음')
end;
%===========================================
RS-LS
%===========================================
if(abs(RS - LS) < eps)
    disp('좌변과 우변이 일치함')
else
    disp('좌변과 우변이 일치하지 않음')
end;