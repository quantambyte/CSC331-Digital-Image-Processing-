%image sharpning using laplacian filter
img = rgb2gray(imread("image.jpg"));

%printing original image
figure; imshow(img); title('Original Image');

laplacian_filter = [-1 -1 -1 ; -1 8 -1 ; -1 -1 -1];

%applying filter
laplacian = imfilter(img , laplacian_filter);

%edges
figure; imshow(laplacian); 

img = img + laplacian;

figure; imshow(img); title('Sharpened Image');