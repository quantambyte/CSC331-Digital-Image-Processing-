
%TODO
%Airthmetic Mean Filter and Geometric Mean Filter
%both do blurring but Geometric do less bluring so less loss

%image read and converting to gray
image = rgb2gray(imread('image.jpg'));

%adding noise
noised_image = imnoise(image , 'gaussian');

[R , C] = size(image);


%printing result
figure; imshow(image); title('Original Image');
figure; imshow(noised_image); title('Noised Image');

%creating resulting images
airthmeticFilterResult = uint8(zeros(R , C));
geometricFilterResult = uint8(zeros(R , C));

%filter size and neighbours selecting
filter_size = 5;

n = round(filter_size/2);

for i = n : 1 : R - (n - 1)
    for j = n : 1 : C - (n - 1)
        
        %selecting neighbours
        neighbours = noised_image( i - (n - 1) : i + (n -1) , j - (n -1): j+ (n - 1));
        
        airthmeticFilterResult(i ,j) = (sum(neighbours , 'all') / (filter_size * filter_size));
        
        %multiplication of neighbours
        [rTemp , cTemp] = size(neighbours);
        mul = 1;
        
        for k = 1 : 1 : rTemp
            for l = 1 : 1 : cTemp
                
                mul = mul * neighbours(k,l);
            end
        end
        
        %placing values
        geometricFilterResult(i , j) = (mul .^ (1/filter_size * filter_size));
        
    end
end

%printing result
figure; imshow(airthmeticFilterResult); title('Airthmetic Mean Filter Result');
figure; imshow(geometricFilterResult); title('Geometric Mean Filter Result');
        


