clc;clear all;close all;
n=0:27;
x=exp(j*3*pi/7*n);
%% gerçek ve sanal kısım
g=real(x);
s=imag(x);

%% genlik ve faz
gen=abs(x);
faz=angle(x);

subplot(221),stem(n,g),title('gerçek');
subplot(222),stem(n,s),title('sanal');
subplot(223),stem(n,gen),title('genlik');
subplot(224),stem(n,faz),title('faz');

%Matlab'in faz fonksiyonu değerleri -pi ve + pi arasında değer alacak şekilde gösteriyor


