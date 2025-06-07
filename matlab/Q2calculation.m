syms t;
R1=0.9;
R2=1;
R3=0.24;
d1=2.5;
d2=3.5;
d3=R1+R2+R1/1.3;%此处根据比例尺估计
d4=1.5;
theta13=asin(R3/R1);
theta23=asin(R3/R2);
f13_min=2*sqrt(R3^2-(R1^2)*sin(t)^2)*R1;
f13_max=sqrt(R1^2-(R3^2)*sin(t)^2)*R3;
f23_min=2*sqrt(R3^2-(R2^2)*sin(t)^2)*R2;
f23_max=sqrt(R2^2-(R3^2)*sin(t)^2)*R3;
A13_min=vpa(int(f13_min,t,-theta13,theta13));
A13_max=vpa(int(f13_max,t,0,2*pi));
A23_min=vpa(int(f23_min,t,-theta23,theta23));
A23_max=vpa(int(f23_max,t,0,2*pi));
%%stage of calculating the total area
A1=4/3*pi*R1^3+2*pi*R1*(d4+2*R3);
A2=4/3*pi*R2^3+2*pi*R2*d2;
A3=vpa(2*pi*R3*d3-A13_max-A23_max);
result=2*A1+A2-4*A13_min-4*A23_min+4*A3;
result=vpa(real(result));
2*pi*R3*d3