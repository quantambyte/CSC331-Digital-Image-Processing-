%image sharpning using laplacian filter
img = rgb2gray(imread("image.jpg"));
[R , C] = size(img);

%printing original image
figure; imshow(img); title('Original Image');

laplacian_filter = [-1 -1 -1 ; -1 9 -1 ; -1 -1 -1];

%applying filter
laplacian = imfilter(img , laplacian_filter);

%edges
figure; imshow(laplacian); 

for i = 1 : 1 : R
    for j = 1 : 1 : C
        img( i , j) = img(i , j) + laplacian(i,j);
    end
end

figure; imshow(img);
title('Sharpened Image');