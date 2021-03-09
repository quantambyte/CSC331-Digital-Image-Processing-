%this code is for selection of 3*3 neighbours 

%converting image to gray scale image
gray_image = rgb2gray(imread("image.jpg"));

%size of image
[R C] = size(gray_image);

%selecting neighbours
for i = 2 : 1 : R -1 
    for j = 2 : 1 : C - 1
        neighbours = gray_image(i - 1 : i + 1 , j - 1 : j + 1)   %this statement will provide neighbours for
                                                                    %each pixel
    end
end
