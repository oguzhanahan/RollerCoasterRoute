clc
clothy(buyukluk,alfa,dugum,viraj,oteleme) %loop'un y bileşeni
y=ans;
a=length(y);
for I=1:buyukluk*2 %looptan sonraki ilerleme
    a=a+1;
    y(a)=y(a-1);
end
c=y(a); %c bir önceki fonksiyonun y teki son noktası
virajyy(alfa1,c) %looptan sonraki ilk virajın y bileşeni
b=length(ans);
for I=1:b
   a=a+1;
   y(a)=ans(I);
end
for I=1:25 %frenleme hattı
    a=a+1;
    y(a)=y(a-1);
end
c=y(a);
virajyy(alfa1,c) %gişeye dönüş virajı
b=length(ans);
for I=1:b
   a=a+1;
   y(a)=ans(I);
end
for I=1:giris %giriş
    a=a+1;
    y(a)=y(a-1);
end
c=y(a);
virajzy(viraj2,alfa2,c,1) %rampa çıkış virajı
b=length(ans);
for I=1:b
    a=a+1;
    y(a)=ans(I);
end
for I=1:25 %rampa
    a=a+1;
    y(a)=y(a-1)+1;
end
c=y(a);
virajxy(viraj3,alfa3,c,1); %rampa tepe noktası düzelme virajı
b=length(ans);
for I=1:b
    a=a+1;
    y(a)=ans(I);
end
for I=1:(25+oteleme) %tepe noktası
    a=a+1;
    y(a)=y(a-1);
end
c=y(a);
virajxy(viraj3,alfa3,c,-1) %rampa tepe noktası bozulma virajı
b=length(ans);
for I=1:b
    a=a+1;
    y(a)=ans(I);
end
for I=1:25 %rampa
    a=a+1;
    y(a)=y(a-1)-1;
end
c=y(a);
virajzy(viraj2,alfa2,c,-1) %rampa çıkış virajı
b=length(ans);
for I=1:b
    a=a+1;
    y(a)=ans(I);
end
for I=y(a):10000 %bağlanma yolu    
    if a==son
        break
    end
    a=a+1;
    y(a)=y(1);
end
