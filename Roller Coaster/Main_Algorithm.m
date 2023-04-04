clc
clear all
buyukluk=15; %input('clothoid ne kadar büyük?'); %3 
f=0;
while f==0
alfa=3.1; %input('bitiş eğimi nedir?'); %3.5
if alfa<3.529
    f=1;
else
    disp('eğim 3.529 dan kucuk olmalı')
end
end
f=0;
dugum=10; %input('başlangıç ve bitiş noktası arasindaki mesafe nedir?'); %10
viraj=10; %input('viraj yarıçapı orjine ne kadar uzaklıkta?'); %10
oteleme=5; %input('oteleme ne kadar?'); %5
viraj1=20; %input('viraj buyukluğu nedir');  %20
alfa1=3.03;
giris=100; %input('giris pistinin uzunluğu nedir?'); %100
viraj2=30; %input('rampa giriş viraj büyüklüğü nedir?'); %30
alfa2=3.03;
viraj3=viraj1; %rampa çıkış virajı 
alfa3=3.03;
coasterx;
coastery;
coasterz;

close all
plot3(x,y,z)
