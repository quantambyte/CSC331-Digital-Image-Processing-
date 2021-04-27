
%TODO
%take an image and add salt&pepper and gaussian noise using imnoise
%remove it using avg and median filter


%reading image and converting it to gray
image = imread('image.jpg');
gray_image = rgb2gray(image);

%original image
figure; imshow(gray_image); title('Original Image');

%size of image
[R , C] = size(gray_image);


%adding noise
saltPepperNoisedImage = imnoise(gray_image , 'salt & pepper');
gaussianNoisedImage = imnoise(gray_image , 'gaussian');


%displaying images(noised)
figure; imshow(saltPepperNoisedImage); title('Salt & Pepper Noised Image');
figure; imshow(gaussianNoisedImage); title('Gaussian Noised Image');


%resultant images
saltPepperResult = uint8(zeros(R ,C));
gaussianResult = uint8(zeros(R , C));

%defining filter size
filter_size = 3;

%finding neighbours
n = round(filter_size / 2);

for i = n : 1: R - (n -1)
    for j = n : 1 : C - (n - 1)
        
        neighbours = saltPepperNoisedImage( i - (n -1) : i + (n -1) , j - (n -1 ) : j+ (n -1));
        neighboursGaussian = gaussianNoisedImage( i - (n -1) : i + (n -1) , j - (n -1 ) : j+ (n -1));
        
        %placing results
        gaussianResult(i , j) = (sum(neighbours , 'all'))/(filter_size * filter_size);
        saltPepperResult(i , j) = median(neighboursGaussian , 'all');
        
        
    end
end

figure; imshow(gaussianResult); title('Gaussian Noise Removed Using Averaging Filter');
figure; imshow(saltPepperResult); title('Salt & Pepper Noise Removed Using Median Filter');
        