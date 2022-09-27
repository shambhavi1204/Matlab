clc, clear all , close all;
I = im2double(imread('C:\Users\student\Desktop\files_exp8\lena_gray.bmp'));
F = fftshift(fft2(I));
plot(abs(F));
IF = ifft2(fftshift(F));
figure, imshow(IF)