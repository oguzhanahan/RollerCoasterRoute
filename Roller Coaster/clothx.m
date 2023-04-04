function [x]=clothx(R,alfa,c,d,a)
s=0;
 for I=2.5065:0.0001:alfa
     if alfa>=3.529
         break
     end
    s=s+1;
    teta=I^2/2;
    r=2*R/I;
    y(s)=-2*R*cos(2.5065^2/2)/2.5065+r*(cos(teta)); 
    x(s)=2*R*sin(2.5065^2/2)/2.5065-r*(sin(teta));
 end
fi=atan((y(s)-d)/(x(s)-c/2));
ro=sqrt((y(s)-d)^2+(x(s)-c/2)^2);
duzeltme=(pi-2*fi)/(alfa-2.5065);
p=s;
for J=fi:duzeltme*0.0001:(pi-fi);
    x(p)=c/2+ro*cos(J);
    y(p)=d+ro*sin(J);
    p=p+1;
end
p1=p;
 for I=alfa:-0.0001:2.5065
    teta=I^2/2;
    r=2*R/I;
    y(p1)=-2*R*cos(2.5065^2/2)/2.5065+r*(cos(teta)); 
    x(p1)=c-2*R*sin(2.5065^2/2)/2.5065+r*(sin(teta));
    p1=p1+1;
 end
h=a/(p1-2);
z=0:h:a;
