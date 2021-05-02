
%reading an image
image = imread('index.jpg');

figure; imshow(image); title('Original Image');

[R , C] = size(image);

eighth = uint8(zeros(R, C));

for i =1  : 1 : R
    for j = 1 : 1 : C
        
        %for 8th bit or MSB
        if(image(i , j) > 128)
            eighth(i ,j) = 1;
        end
        
    end
end

re(i ,j) = eighth(i , j) .* 128;

figure; imshow(re); title('MSB');