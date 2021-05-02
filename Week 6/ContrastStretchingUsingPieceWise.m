
%image reading and printing
image = rgb2gray(imread('index.jpg'));

figure; imshow(image); title('Original Image');

[R , C] = size(image);
s1 = 60;
s2 = 200;

%loops
for i = 1 : 1 : R
    for j = 1 : 1 : C
        
        %for pixel values less than 60
        if (image( i , j) < 60)
            
            image(i , j) = 0.5 * image(i , j);
            
        end
        
        %for values less than 200
        if(image(i , j) >= 60 && image(i,j) < 200)
            
            image(i ,j) = 2 * (image(i , j) - image(60 , 60)) + s1;
        end
        
        %for values greater than 200
        if(image(i , j) >= 200 && image(i ,j) < 255)
            
            image(i ,j) = 0.5 * (image(i , j) - image(200 , 200)) + s2;
        end
        
        
    end
    
end

%final result
figure; imshow(image); title('Result');
        