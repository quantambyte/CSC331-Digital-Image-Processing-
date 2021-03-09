%converting image to gray scale image
gray_image = rgb2gray(imread("image.jpg"));

%size of image
[R C] = size(gray_image);
%creating a black image to store the result
binary_image = zeros(R,C);

for i = 1: 1 : R
    for j = 1 : 1 : C
        if (gray_image(i,j) > 128)     %threshold condition
            binary_image(i ,j ) = 1;
        end
    end
end

%printing result
figure; imshow(binary_image);