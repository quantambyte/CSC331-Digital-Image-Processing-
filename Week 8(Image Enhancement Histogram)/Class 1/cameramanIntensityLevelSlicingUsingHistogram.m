%reading an image
image = imread("cameraman.png");
[R , C] = size(image);

figure; imshow(image); title('Original Image');

%ploting with imhist
figure; plot(imhist(image)); title('Histogram');

%
for i = 1 : R
    for j =  1 : C
        
        %as gray levels from the very start are our target
        if( image(i , j) >= 0 && image(i , j) < 35)
            image(i , j) = 255;
            
        end
        
    end
end

%result after slicing
figure; imshow(image); title('Final Result');