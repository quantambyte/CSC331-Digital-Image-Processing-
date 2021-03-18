%this code is for sharpning of images using averageing
%filter

gray_image =rgb2gray(imread("text.jpg"));

%size of image
[R, C] = size(gray_image);
filter_size = 3;

%printing initial image
figure; imshow(gray_image);
title('Original Image');

temp_image = uint8(zeros(R , C));
blurred_image = uint8(zeros(R, C));

%boosting image
gray_image = 1.5 .* gray_image;


figure; imshow(gray_image);
title('Temp');

%selecting neighbours
for i = 2 : 1 : R - 1
    for j = 2 : 1 : C - 1
        neighbours = gray_image(i - 1 : i + 1 , j - 1 : j + 1);   %this statement will provide neighbours for
                                                                    %each pixel
        step = sum(neighbours , 'all');
        avg = step / (filter_size.^2);
                
        blurred_image( i , j) = avg;
        
    end
end

%extracting edges
for i = 1 : 1:R
    for j = 1: 1: C
        temp_image(i , j) = gray_image(i ,j) - blurred_image(i , j);
    end
end

%edges
figure; imshow(temp_image);
title('Edges');

%sharpened image
for i = 1 : 1 : R
    for j = 1 : 1 : C
        gray_image(i , j) = gray_image(i ,j) + blurred_image(i, j);
    end
end

figure; imshow(gray_image);
title('Sharpened Image');
