gray_image =rgb2gray(imread("index.jpg"));
%size of image
[R C] = size(gray_image);

%printing initial image
figure; imshow(gray_image);

%selecting neighbours
for i = 3 : 1 : R -2
    for j = 3 : 1 : C - 2
        neighbours = gray_image(i - 2 : i + 2 , j - 2 : j + 2);   %this statement will provide neighbours for
                                                                    %each pixel
        max_neighbour = median(neighbours , [] , 'all');
        gray_image(i , j ) = max_neighbour;
        
    end
end

%final result
figure; imshow(gray_image);
