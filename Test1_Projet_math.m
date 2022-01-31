Fs = 8e3
 n = 5
 a =record(n) ;
 b =fft(a) ;
 t=0:1/Fs:n-(1/Fs) ;
 
 plot(t,b);
 
 decal = 50
 
 
 cdqdsdqs =length(b)
 dsqdqs = length(i=decal+1:n*Fs-decal )
 
 for i=decal+1:n*Fs-decal 
   c(i)=b(i-decal);
   c(n*Fs-i+1)=b(n*Fs-i+decal);
 endfor
 
 for y=1:decal
   c(y) = i*0;
   c(n*Fs-y+1) = i*0;
 endfor

 d=ifft(c) ;

 length(t)
 length(c)

 
plot (t,d) ;