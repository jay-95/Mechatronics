R=4; sphere=4/3*pi*R^3;
a=1;
cube=1;
st=1;
while abs(sphere-cube)>0.0001
    cube=a^3;
    if sphere-cube>0
        a=a+st;
    else
        a=a-st; st=st/10; a=a+st; cube=a^3;
    end
end
sphere, cube, a