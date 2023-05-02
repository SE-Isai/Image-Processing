# filtro_pasaalto
This MATLAB function filtro_pasaalto applies a high-pass filter to an input RGB image. The function first reads an image file named torre.jpg and converts it to grayscale using the rgb2gray function. The high-pass filter is defined in the filtro matrix.

The function then applies the filter to each pixel in the image using nested for loops, where m and n represent the dimensions of the image. The output image is stored in imagen1.

The function displays the original and filtered images side by side in a figure window using the imshow function.

To run this function, save the code in a file named filtro_pasaalto.m and call the function from the command window. Note that the torre.jpg image file should be in the same directory as the filtro_pasaalto.m file.
