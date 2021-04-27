%take an image and save the frequency of each gray level and then plot it
%compare with imhist function

%reading an image
image = imread("cameraman.png");
[R , C] = size(image);

histo = zeros(1 , 256);


%counting the frequency
for i = 1: 1 : R
    for j = 1 : 1 : C
        histo(image(i,j)+1) = histo(image(i,j)+1) + 1 ;
    end
end


figure; plot(histo); title('result');

%ploting with imhist
figure; plot(imhist(image)); title('using imhist built-in method');