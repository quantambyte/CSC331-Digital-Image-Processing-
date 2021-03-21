%image sharpning using laplacian filter
img = rgb2gray(imread("image.jpg"));
[R , C] = size(img);

%printing original image
figure; imshow(img); title('Original Image');

prewitt_filter = [-1 -1 -1 ; 0 0 0 ; 1 1 1];

%applying filter
prewitt = imfilter(img , prewitt_filter);

%edges
figure; imshow(prewitt); 

for i = 1 : 1 : R
    for j = 1 : 1 : C
        img( i , j) = img(i , j) + prewitt(i,j);
    end
end

figure; imshow(img);
title('Sharpened Image');