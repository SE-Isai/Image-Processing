% This function applies a high-pass filter to an input image
% The input image 'torre.jpg' is read and converted to grayscale
% The filter used is a 3x3 matrix with the following values:
%     [-1,-1,-1;
%      -1,14,-1;
%      -1,-1,-1]
% The filter is applied to each pixel in the image, except for the borders
% of the image, which are not considered to avoid boundary effects.
% The output image is shown in a figure window.

function filtro_pasaalto
i=0;
imagen=imread('torre.jpg');
imagen0=rgb2gray(imagen);
imagen1=rgb2gray(imagen);
[m,n]=size(imagen0);
filtro=[-1,-1,-1;
        -1, 14,-1;
        -1,-1,-1];
    
    
   
    

for z=3:m-2
    for w=3:n-2
        i=0;
        for x=1:3
            for y=1:3
                y0=double(imagen0((z-3+x),(w-3+y)));
                suma=y0*filtro(x,y)+i;
                i=suma;
            end
        end
            sumafiltro=sum(sum(filtro));
            if sumafiltro<1
             sumafiltro=1;
            end
            nvp=suma/sumafiltro;
            nvp0=uint8(nvp);
            imagen1(z,w)=nvp0;
    end
end
figure(1)
subplot(2,2,[1,3]);
imshow(imagen0);
subplot(2,2,[2,4]);
imshow(imagen1);
end
