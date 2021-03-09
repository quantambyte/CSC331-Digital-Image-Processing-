image = imread("240.jpg");

figure;imshow(image)

[R C] = size(image);

for i = 1 : 1 : R
    for j = 1 : 1 : C
        image(i,j) = image(i,j) + 50;
    end
end

figure;imshow(image)