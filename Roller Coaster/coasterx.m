clc
clothx(buyukluk,alfa,dugum,viraj,oteleme) %loop'un x bileşeni
x=ans;
a=length(x);
for I=1:buyukluk*2 %looptan sonraki ilerleme
    a=a+1;
    x(a)=x(a-1)+1;
end
c=x(a); %c bir önceki fonksiyonun x teki son noktası
virajyx(viraj1,alfa1,c,1) %looptan sonraki ilk virajın x bileşeni
b=length(ans);
for I=1:b
   a=a+1;
   x(a)=ans(I);
end
for I=1:25 %frenleme hattı
    a=a+1;
    x(a)=x(a-1);
end
c=x(a);
virajyx(viraj1,alfa1,c,-1) %gişeye dönüş virajı
b=length(ans);
for I=1:b
   a=a+1;
   x(a)=ans(I);
end
for I=1:giris %giriş
    a=a+1;
    x(a)=x(a-1)-1;
end
c=x(a);
virajzx(viraj2,alfa2,c,1) %rampa çıkış virajı
b=length(ans);
for I=1:b
    a=a+1;
    x(a)=ans(I);
end
for I=1:25 %rampa
    a=a+1;
    x(a)=x(a-1);
end
c=x(a);
virajxx(alfa3,c); %rampa tepe noktası düzelme virajı
b=length(ans);
for I=1:b
    a=a+1;
    x(a)=ans(I);
end
for I=1:(25+oteleme) %tepe noktası
    a=a+1;
    x(a)=x(a-1);
end
c=x(a);
virajxx(alfa3,c) %rampa tepe noktası bozulma virajı
b=length(ans);
for I=1:b
    a=a+1;
    x(a)=ans(I);
end
for I=1:25 %rampa
    a=a+1;
    x(a)=x(a-1);
end
c=x(a);
virajzx(viraj2,alfa2,c,-1) %rampa çıkış virajı
b=length(ans);
for I=1:b
    a=a+1;
    x(a)=ans(I);
end
for I=x(a):x(1) %bağlanma yolu
    a=a+1;
    x(a)=I;
end
son=a;
