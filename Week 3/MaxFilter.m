%this code is for noise removal using max filter implementation for 3*3 neighbours

image = rgb2gray(imread("image.jpg"));

%adding noise on original image
noise_Image = imnoise(image, "salt & pepper");

%printing noise_image
figure; imshow(noise_Image)

%size of image
[R, C] = size(noise_Image);

%creating temp image
new_img = uint8(zeros(R, C));

%selecting neighbours
for i = 2 : 1 : R -1 
    for j = 2 : 1 : C - 1
        neighbours = noise_Image(i - 1 : i + 1 , j - 1 : j + 1);   %this statement will provide neighbours for
                                                                    %each pixel
        max_neighbour = max(neighbours , [] , "all");
        
        %placing pixels at new image
        new_img(i , j) = max_neighbour;
        
    end
end

%final result
figure; imshow(new_img);
