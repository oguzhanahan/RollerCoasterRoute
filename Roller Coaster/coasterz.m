clc
clothz(buyukluk,alfa,dugum,viraj,oteleme) %loop'un z bileşeni
z=ans;
a=length(z);
for I=1:buyukluk*2 %looptan sonraki ilerleme
    a=a+1;
    z(a)=z(a-1);
end
c=z(a); %c bir önceki fonksiyonun z teki son noktası
virajyz(viraj1,alfa1,c,1) %looptan sonraki ilk virajın z bileşeni
b=length(ans);
for I=1:b
   a=a+1;
   z(a)=ans(I);
end
for I=1:25 %frenleme hattı
    a=a+1;
    z(a)=z(a-1)+1;
end
c=z(a);
virajyz(viraj1,alfa1,c,-1) %gişeye dönüş virajı
b=length(ans);
for I=1:b
   a=a+1;
   z(a)=ans(I);
end
for I=1:giris %giris hattı
    a=a+1;
    z(a)=z(a-1);
end
c=z(a);
virajzz(alfa2,c) %rampa çıkış virajı
b=length(ans);
for I=1:b
    a=a+1;
    z(a)=ans(I);
end
for I=1:25 %rampa
    a=a+1;
    z(a)=z(a-1);
end
c=z(a);
virajxz(viraj3,alfa3,c,1); %rampa tepe noktası düzelme virajı
b=length(ans);
for I=1:b
    a=a+1;
    z(a)=ans(I);
end
for I=1:(25+oteleme) %tepe noktası
    a=a+1;
    z(a)=z(a-1)-1;
end
c=z(a);
virajxz(viraj3,alfa3,c,-1) %rampa tepe noktası bozulma virajı
b=length(ans);
for I=1:b
    a=a+1;
    z(a)=ans(I);
end
for I=1:25 %rampa
    a=a+1;
    z(a)=z(a-1);
end
c=z(a);
virajzz(alfa2,c) %rampa çıkış virajı
b=length(ans);
for I=1:b
    a=a+1;
    z(a)=ans(I);
end
for I=z(a):10000 %bağlanma yolu
    if a==son;
        break
    end
    a=a+1;
    z(a)=z(1);
end
