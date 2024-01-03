clc;clear all;close all;
%h[n]=dirac[n]+dirac[n-1]+dirac[n-2]
%x[n]=cos(pi/4*n)

%% yol 1 conv
n=0:19;                 %istediğiniz göre oluşturabilirsiz
x=cos(pi/4*n);          %giriş işaretini oluşturduk
h=[1 1 1];              %dürtü cevabını oluşturduk
y=conv(h,x);            %konvolusyonu aldık
stem(n,y(1:length(n))); %çıkış işaretinin ilk 20 örneğini n'e göre çizdirdik

% Bu kodda amacımız, H(w) fonksiyonunda w0'ı yerine yazıp elde ettigimiz kompleks sayının genligini ve fazını
% önceki videoda anlatıldıgı gibi kullanarak konvolusyon hesaplamadan çıkış işaretini bulmak.

%% yol 2 DTFT den faydalanarak çözüm
w0=pi/4; %H(w)'da yerine yazacagımız frekans degeri
H_w0=1+exp(-i*w0)+exp(-2*i*w0); %dogrudan H(w)'da yerine yazdıgımızda elde edeceğimiz kompleks sayı
r=abs(H_w0); %genliğini 
theta=angle(H_w0);%fazını bulduk
y2=r*cos(pi/4*n+theta);%videoda buldugumuz gibi yerlerine yazdık.
hold on;
stem(n,y2,'rx')% geçici cevabın dışındaki noktalarda konvolusyon sonucu ile örtüştüğünü gördük


