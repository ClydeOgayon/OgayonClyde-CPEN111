clc;
clf;
close all;
clear all;
pkg load image;

parrot_pic = imread('parrots.jpg')
subplot(1,2,1), imshow(parrot_pic), title('Original Image');
whos parrot_pic
parrot_gray = rgb2gray(parrot_pic);
imwrite(parrot_gray,'parrots_grayscale.jpg');
subplot(1,2,2), imshow(parrot_gray),title('GrayScale Image');
