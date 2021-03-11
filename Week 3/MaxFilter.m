gray_image =rgb2gray(imread("image.jpg"));
%size of image
[R C] = size(gray_image);

gray_image = imnoise( gray_image , 'salt & pepper' , 0.01);
%printing initial image
figure; imshow(gray_image);

%selecting neighbours
for i = 2 : 1 : R -1 
    for j = 2 : 1 : C - 1
        neighbours = gray_image(i - 1 : i + 1 , j - 1 : j + 1);   %this statement will provide neighbours for
                                                                    %each pixel
        max_neighbour = max(neighbours , [] , "all");
        gray_image(i , j ) = max_neighbour;
        
    end
end

%final result
figure; imshow(gray_image);
