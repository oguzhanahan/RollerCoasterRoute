function [y]=virajzy(R,alfa,b,d)
s=0;
if d==1
 for I=2.5065:d*0.0001:alfa
    s=s+1;
    teta=I^2/2;
    r=2*R/I;
    y(s)=b-(2*R/2.5065)*cos(2.5065^2/2)+r*(cos(teta)); 
 end
elseif d==-1
     for I=alfa:d*0.0001:2.5065
    s=s+1;
    teta=I^2/2;
    r=2*R/I;
    y(s)=b-(2*R/alfa)*cos(alfa^2/2)+r*(cos(teta)); 
     end
end
