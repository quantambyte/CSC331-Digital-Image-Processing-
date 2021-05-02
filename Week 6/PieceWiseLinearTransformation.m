%reading image and displaying it
image = rgb2gray(imread('lowContrast.jpg'));

figure; imshow(image); title('Original Image');

[R , C] = size(image);

for i = 1 : 1 : R
    for j = 1 : 1 : C
        
        %for pixel values whose value is less than 100 dark values
        if( image(i , j)  <= 100)
            image(i , j) = 2 * image(i ,j);
        end
        
        %medium range value uneffected
        if ( image(i,j) <= 200 && image(i ,j) > 100)
                continue;
        end
        
        %making brighten values dull
        if( image(i , j) > 200 && image(i,j) <= 255)
            image(i ,j) = 0.5 * image(i,j);
        end
        
        
    end
end

%final result
figure; imshow(image); title('After Piece Wise Linear Transformation');

        