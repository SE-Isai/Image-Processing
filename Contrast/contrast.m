close all;
clear;
%Leemos imagen
im=imread('imagen5.jpg');
%convertimos imagen a grises
im=rgb2gray(im);
%Hacemos una copia convertida a double
imDouble=cast(im, 'double');
imD=im;
%[f,c]=size(imD);
[f,c]=size(imDouble);
%Calculo de histograma imagen original
for i=1:256
    h(i)=0;
end
for i=1;f
    for j=1:c
        k=imD(i,j);
        h(k+1)=h(k+1)+1;
    end
end
%mostramos imagen e histograma
figure;
subplot(2,2,1);
imshow (im);
title('Imagen original');

subplot(2,2,2);
stem(h);
title('Histograma');

%usamos la ecuacion para obtener una nueva imagen
minimo=0;
maximo=50;
%aplicamos la formula de contraste
for i=1:f
    for j=1:c
        b= imDouble(i,j); 
       nueva(i,j)=round(((b-minimo)*(255))/(maximo-minimo));
        if nueva(i,j) < 0 
           nueva(i,j)=0;  
        end
        if nueva(i,j) > 255 
           nueva(i,j)= 255;  
        end
    end
end
%convertimos la imagen 
nueva=cast( nueva, 'uint8');
%mostramos la imagen
subplot(2,2,3);
imshow (nueva);
title('Imagen con contraste');
%Calculamos el histograma de la nueva imagen
for i=1:256
    h(i)=0;
end
for i=1;f
    for j=1:c
        k=nueva(i,j);
        h(k+1)=h(k+1)+1;
    end
end
%mostramos el histograma de la nueva imagen
subplot(2,2,4);
stem(h);
title('histograma con contraste');
