clc;clear all;close all;

% x(t)=3*cos(200*pi*t)+2*sin(400*pi*t)

x=@(t) 3*cos(200*pi*t)+2*sin(400*pi*t); %fonksiyon handle değişkeni tanımladık sürekli zaman çizdirmek için
fplot(x,[0 1/50]) %0 ile 1/50 arasında x'i çizdirdik
Ts=1/800; %örnekleme periyodu.
nTs=0:Ts:1/50; %Ts adımlarla işaretten örnek almak istediğimiz zamanları vektör şeklinde oluşturduk. 
x_n=3*cos(200*pi*nTs)+2*sin(400*pi*nTs); %x[n] işaretini oluşturduk.
hold on; %grafikleri üst üste çizebilmek için.
stem(nTs,x_n) % ayrık zamanlı işareti çizdirdik.