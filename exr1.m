clc;
clear all;
close all;
I = imread('C:\Users\student\Desktop\files_exp8\lena_gray','bmp');
J = imresize(I, 2);
J_s = imnoise(J,'salt & pepper',0.25);
%imshow(J)
K = medfilt2(J_s,[3 3]);
K_f = medfilt2(J_s,[5 5]);
K_s = medfilt2(J_s,[7 7]);
figure;
subplot(2,2,1);
imshow(J_s);
subplot(2,2,2);
imshow(K)
subplot(2,2,3);
imshow(K_f)
subplot(2,2,4);
imshow(K_s)
