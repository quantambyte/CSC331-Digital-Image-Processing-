
%image reading
image = rgb2gray(imread('image.jpg'));
figure; imshow(image); title('Original Image');

%converting to frequency domain
imgFFT = fft2(double(image));

%converting to spatial or inverse frequency domain
image2 = ifft2(imgFFT);

figure; imshow(image2); title('Frequency Domain');

%as frequency domain is not in 0 or 255 so we have take log
newImage = fftshift(log(1 + abs(imgFFT)));

figure; imshow(newImage); title('With LOG');