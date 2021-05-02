
%reading an image
image = rgb2gray(imread('lowContrast.jpg'));

figure; imshow(image); title('Original Image');

%as we know formula is => (((f - fmin)/(fmax - fmin)) * (L -1))
%where L is the number of gray levels for example for 8 bit image L-1 = 255

L = 256;

%value of f
f = double(image);

%taking 2 times min and max because image consists of rows and columns and
%we want to obtain the minimum value of pixel or maximum value which can be
%image(i,j) so
fmin = min(min(f));
fmax = max(max(f));

%applying formula
output = uint8((((f - fmin)/(fmax - fmin)) * (L -1)));

%output
figure; imshow(output); title('Output Image');