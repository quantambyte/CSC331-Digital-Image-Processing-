
%reading image
image = rgb2gray(imread('Picture1.png'));

[R , C] = size(image);

%creating output image
output = uint8(zeros(R,C));


%as we know output = c . input + b
%where c and b are constants
%when c = 2 and b = 32

temp = 2.*image;
output = 32 + temp;

figure; imshow(output); title('When c = 2 and b = 32');


%when c = 1 and b = -56
output = -56 + image;

figure; imshow(output); title('When c = 1 and b = -56');


%when c = 0.3 and b = 0
temp = 0.3 .* image;
output = 0 + temp;

figure; imshow(output); title('When c = 0.3 and b = 0');