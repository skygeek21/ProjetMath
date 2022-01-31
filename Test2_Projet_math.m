 a =record(5) ; #on enrigstre la voix pendent 5sec
 b =fft(a) ;    #on transforme en fft
 t=1:1:40000 ;  # creer un tableau qui permet de plot
 m = 42 ;        #variable de modulation    
 plot(t,b); 
 
for i=1:40000
  b(i)= cos(m)*b(i);
endfor 

for i=1:40000
  b(i)= sin(m)*b(i);
endfor 

 c=ifft(b) ;
plot(t,c); 

