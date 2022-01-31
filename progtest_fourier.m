clear all;
close all;
clc;

Fs = 10e6;
Tdur = 100e-6;
Fstart = 500e3
Fstop = 1500e3

tvec = 0:1/Fs:Tdur-1/Fs;
xreal = sin(2*pi*(Fstart*tvec + (Fstop-Fstart)/(2*Tdur)*tvec.^2));

figure(1)
plot(tvec,xreal)
xlabel('Time (sec)')
ylabel('Amplitude')

Nfft = length(xreal)
fvec = (-Nfft/2:Nfft/2-1)*Fs/Nfft;
Xreal = fftshift(fft(xreal));

figure(2)
plot(fvec,abs(Xreal))

ModXreal = Xreal;

modxreal = ifft(ModXreal) ;

figure(3)
specgram(xreal,124,Fs)

grid on