%image sharpning using sobel filter
%we will apply horizontal filter to extract
%vertical edges we apply this filter vertically 
%then we can extract horizontal edges
%filter will be then [1 0 1 ; -2 0 -2 ; 1 0 1]
img = rgb2gray(imread("image.jpg"));
[R , C] = size(img);

%printing original image
figure; imshow(img); title('Original Image');

sobel_filter = [1 -2 1 ; 0 0 0 ; 1 -2 1];

%applying filter
sobel = imfilter(img , sobel_filter);

%edges
figure; imshow(sobel); 

for i = 1 : 1 : R
    for j = 1 : 1 : C
        img( i , j) = img(i , j) + sobel(i,j);
    end
end

figure; imshow(img); title('Sharpened Image');