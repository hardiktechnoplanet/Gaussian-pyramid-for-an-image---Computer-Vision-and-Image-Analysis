%% Gaussian pyramid
close all;
clc;
Img= imread('Image.bmp');
imshow(Img);
title('Original Image'); % Level 1 image 
GK=[1/16 1/4 6/16 1/4 1/16]; % Gaussian Kernal
O11=zeros(1,958);
O22=zeros(1,1274);
C11 = [O22;O22;Img;O22;O22];
C22 = [O11;O11;transpose(C11);O11;O11];
C = transpose(C22);
for i=3:+2:956
    for j=3:+2:1276
        D((i),(j))= GK(1,1)*C(i,j-2) +  GK(1,2)*C(i,j-1) + GK(1,3)*C(i,j) + GK(1,4)*C(i,j+1) + GK(1,5)*C(i,j+2);
    end
end
D11=D(3:2:end,:);
D22=transpose(D11);
D=D22(3:2:end,:);
D=transpose(D); % Downsampling step
figure;
imshow(D);
title('Gaussian Pyramid level 2 Image');
%% Begining of level 3
O11=zeros(1,481);
O22=zeros(1,637);
C11 = [O22;O22;D;O22;O22];
C22 = [O11;O11;transpose(C11);O11;O11];
C = transpose(C22);
for i=3:+2:479
    for j=3:+2:639
        D((i),(j))= GK(1,1)*C(i,j-2) +  GK(1,2)*C(i,j-1) + GK(1,3)*C(i,j) + GK(1,4)*C(i,j+1) + GK(1,5)*C(i,j+2);
    end
end
D11=D(3:2:end,:);
D22=transpose(D11);
D=D22(3:2:end,:);
D=transpose(D); % Downsampling step
figure;
imshow(D);
title('Gaussian Pyramid level 3 Image');
%% Begining of level 4 
O11=zeros(1,243);
O22=zeros(1,319);
C11 = [O22;O22;D;O22;O22];
C22 = [O11;O11;transpose(C11);O11;O11];
C = transpose(C22);
for i=3:+2:241
    for j=3:+2:321
        D((i),(j))= GK(1,1)*C(i,j-2) +  GK(1,2)*C(i,j-1) + GK(1,3)*C(i,j) + GK(1,4)*C(i,j+1) + GK(1,5)*C(i,j+2);
    end
end
D11=D(3:2:end,:);
D22=transpose(D11);
D=D22(3:2:end,:);
D=transpose(D); % Downsampling step
figure;
imshow(D);
title('Gaussian Pyramid level 4 Image');
%% Begining of level 5 
O11=zeros(1,124);
O22=zeros(1,160);
C11 = [O22;O22;D;O22;O22];
C22 = [O11;O11;transpose(C11);O11;O11];
C = transpose(C22);
for i=3:+2:122
    for j=3:+2:162
        D((i),(j))= GK(1,1)*C(i,j-2) +  GK(1,2)*C(i,j-1) + GK(1,3)*C(i,j) + GK(1,4)*C(i,j+1) + GK(1,5)*C(i,j+2);
    end
end
D11=D(3:2:end,:);
D22=transpose(D11);
D=D22(3:2:end,:);
D=transpose(D); % Downsampling step
figure;
imshow(D);
title('Gaussian Pyramid level 5 Image');


