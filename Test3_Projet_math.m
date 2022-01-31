Fs = 8e3
n = 1 #temps de record
a =record(n) ; #on enrigstre la voix pendent 5sec
Nfft = length(a)
b =fft(a) ;    #on transforme en fft
t=0:1/Fs:n-1/Fs ;  # creer un tableau qui permet de plot
m = 42 ;        #variable de modulation    
 
fvec = (-Nfft/2:Nfft/2-1)*Fs/Nfft;
figure(1)
plot(fvec,fftshift(b)); 
d= 5.*b;

c=ifft(d) ;
N = length(c)
time = 0:1/N:n-(1/N);

figure(2)
plot(time,c); 

