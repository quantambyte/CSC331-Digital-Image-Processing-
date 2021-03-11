img = zeros(200 , 200);
cx = 100;
cy = 100;
[R C] = size(img);
cr = 50;

for i = 1 : 1 : R
    for j = 1 : 1 : C
        if( (abs(i - cx) + abs(j - cy)) <= cr )
            img(i,j) = 255;
        end
    end
end

imshow(img)
