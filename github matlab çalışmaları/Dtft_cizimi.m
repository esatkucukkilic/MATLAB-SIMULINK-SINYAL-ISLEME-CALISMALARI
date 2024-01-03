clc;clear all;close all;
syms n w; % sembolik değişkenleri tanımladık.
Xw=symsum((1/2)^n*exp(-1i*w*n),n,0,10000);


fplot(imag(Xw),[-pi,pi])% sembolik olduğu için değişken fplot()komutunu kullandık. 2 pi ile periyodiklik olduğundan -pi +pi aralığını çizdirmek yeterli (veya 0-2*pi)
%imag()     --> imajiner kısmı
%real()     --> reel kısmı

%abs()      --> genlik
%angle()    --> faz
%için kullanılır