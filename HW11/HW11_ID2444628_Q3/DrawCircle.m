function DrawCircle(x,y,r,dir)

angle1 = 0*(dir==1) + pi/2*(dir==2) + pi*(dir==3) + 3*pi/2*(dir==4) ;
angle2 = pi/2*(dir==1) + pi*(dir==2) + 3*pi/2*(dir==3) + 2*pi*(dir==4);

x = x + r*(dir==2 || dir==3);
y = y + r*(dir==3 || dir==4); 

t = angle1:pi/50:angle2;
xunit = r * cos(t) + x;
yunit = r * sin(t) + y;
plot(xunit, yunit, 'color', 'k', 'LineWidth', 1.5);