%this code is for extraction of large and bright edges using averageing
%filter in this code, we simply apply a large bluring filter/averaging
%filter like of 15*15 and then applying thersholding to get bright and
%latge edges thersholding condition is 100

gray_image =rgb2gray(imread("stars_image.png"));

%size of image
[R, C] = size(gray_image);
filter_size = 11;

%printing initial image
figure; imshow(gray_image);
title('Original Image');

temp_image = uint8(zeros(R , C));
blurred_image = uint8(zeros(R, C));

%selecting neighbours
for i = 6 : 1 : R - 5
    for j = 6 : 1 : C - 5
        neighbours = gray_image(i - 5 : i + 5 , j - 5 : j + 5);   %this statement will provide neighbours for
                                                                    %each pixel
        step = sum(neighbours , 'all');
        avg = step / (filter_size.^2);
        
        if (avg >= 128)
            temp_image(i , j) = 255;
        end
        
        blurred_image( i , j) = avg;
        
    end
end

%final result
figure; imshow(blurred_image);
title('Blurred Image');
figure; imshow(temp_image);
title('Blurred and Theshold Image');


%printing final result
for i = 6 : 1 : R - 5
    for j = 6 : 1 : C - 5
        if ( temp_image (i , j ) == 0)
            gray_image(i , j) == 0;
        end
    end
end

%result
figure; imshow(gray_image);
title('Large Stars');

