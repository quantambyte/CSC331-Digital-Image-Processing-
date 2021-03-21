%image translation
image = imread("image.jpg");

figure; imshow(image);
title("Original Image");

[R , C] = size(image);

temp_image = uint8(zeros(R , C));

%around x-axis
for i = 1: 1: R
    for j = 1 : 1 : C
        temp_image(i , j) = image(i + 10 , j+ 5);
    end
end

%temp image printing
figure; imshow(temp_image);
title('Traslated Image');

