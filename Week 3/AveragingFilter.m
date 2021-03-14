%this code is for noise removal using average neighbour filter implementation for 3*3 neighbours
%averaging filter can also be used to blur image

gray_image =rgb2gray(imread("image.jpg"));

%adding noise
gray_image = imnoise( gray_image , 'salt & pepper' , 0.10);

%size of image
[R, C] = size(gray_image);
filter_size = 3;

%printing initial image
figure; imshow(gray_image);

temp_image = uint8(zeros(R , C));

%selecting neighbours
for i = 2 : 1 : R -1
    for j = 2 : 1 : C - 1
        neighbours = gray_image(i - 1 : i + 1 , j - 1 : j + 1);   %this statement will provide neighbours for
                                                                    %each pixel
        %rTemp = reshape(neighbours , 2);        %resizing into matrix
        step = sum(neighbours , 'all');
        temp_image(i , j ) = (step / (filter_size.^2));
        
    end
end

%final result
figure; imshow(temp_image);
