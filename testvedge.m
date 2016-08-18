ImgData = double((imread('5.1.tiff')));
[WIDTH HEIGHT]=size(ImgData);
    ImgOut = zeros(HEIGHT, WIDTH, 3);
    for y = 1:2:HEIGHT-2
        
        for x = 1:2:WIDTH-2
            if y >= 0 && y < HEIGHT && x >= 0 && x < WIDTH
                p1 = ImgData(y,x+1);
                p2 = ImgData(y,x+2);
               
            else
                
                d = 0;
            end           
            [a,b] =vedge(p1,p2);      
            Iout(x+1,y)=a;
            Iout(x+2,y)=b;
        end  
       
    end
imshow(uint8(ImgData));
figure(2)
imshow(Iout,[]);