%composite filter to sharpen image using 2nd derivative
%filter

img = rgb2gray(imread("image.jpg"));

figure; imshow(img); title('Original');

composite_filter = [-1 -1 -1 ; -1 9 -1 ; -1 -1 -1];

composite = imfilter(img , composite_filter);

figure; imshow(composite); title('Sharpening using Composite filter');