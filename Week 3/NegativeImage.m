%negative Image
gray_image = rgb2gray(imread("image.jpg"));

%size of image
[R C] = size(gray_image);

%printing original image
figure; imshow(gray_image);

for i =1 : 1 : R
    for j = 1 : 1 : C
        gray_image(i , j ) = 255 - gray_image(i , j);       %changing pixel value
    end
end

%final result
figure; imshow(gray_image);
        