function [z]=virajxz(R,alfa,c,d)
s=0; 
if d==1
    for I=2.5065:d*0.0001:alfa
    s=s+1;
    teta=I^2/2;
    r=2*R/I;
    z(s)=c+(2*R/2.5065)*cos(2.5065^2/2)-r*(cos(teta));
    end
 elseif d==-1
    for I=alfa:d*0.0001:2.5065
    s=s+1;
    teta=I^2/2;
    r=2*R/I;
    z(s)=c-(2*R/alfa)*cos(alfa^2/2)+r*(cos(teta));
    end
end
