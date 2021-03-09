img = zeros(500,500);
cx = 250;
cy = 250;
cr = 200;
[R C] = size(img);

for i = 1 : 1 : R
    for j = 1 : 1 : C
        if( sqrt((i - cx).^2 + (j - cy).^2) <= cr)
            img(i,j) = 255;
        end
    end
end


imshow(img)
