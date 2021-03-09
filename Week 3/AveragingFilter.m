gray_image =rgb2gray(imread("image.jpg"));
gray_image = imnoise( gray_image , 'salt & pepper' , 0.10);
%size of image
[R C] = size(gray_image);
filter_size = 5;

%printing initial image
figure; imshow(gray_image);

%selecting neighbours
for i = 3 : 1 : R -2
    for j = 3 : 1 : C - 2
        neighbours = gray_image(i - 2 : i + 2 , j - 2 : j + 2);   %this statement will provide neighbours for
                                                                    %each pixel
        %rTemp = reshape(neighbours , 2);        %resizing into matrix
        step = sum(neighbours , 'all');
        gray_image(i , j ) = (step / (filter_size.^2));
        
    end
end

%final result
figure; imshow(gray_image);
