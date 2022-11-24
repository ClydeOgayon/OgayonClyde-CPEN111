clc;
clf;
close all;
clear all;
pkg load image;
nature_pic = imread('nature.jpg')
whos nature_pic

nature_red=nature_pic;
nature_red(:,:,2)=0;
nature_red(:,:,3)=0;

nature_green=nature_pic;
nature_green(:,:,1)=0;
nature_green(:,:,3)=0;

nature_blue=nature_pic;
nature_blue(:,:,1)=0;
nature_blue(:,:,2)=0;

imwrite(nature_pic,'nature.png');
imwrite(nature_red,'nature_red.png');
imwrite(nature_green,'nature_green.png');
imwrite(nature_blue,'nature_blue.png');

subplot(2,2,1),imshow(nature_pic),title('Original Image');
subplot(2,2,2),imshow(nature_red),title('Red  Image');
subplot(2,2,3),imshow(nature_green),title('Green Image');
subplot(2,2,4),imshow(nature_blue),title('Blue Image');
