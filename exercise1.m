clc;
clf;
close all;
clear all;
pkg load image;

fruit_image = imread("fruits.png")
image_info = imfinfo("fruits.png")
figure(1), imshow(fruit_image)

fruits_spatial = imresize(fruit_image, 0.5);
imwrite(fruits_spatial, 'fruits2.png');
whos fruits_spatial
figure(2), imshow('fruits2.png')

rgb2hsv = rgb2hsv(fruits_spatial);
imwrite(rgb2hsv, 'fruits3.png');
figure(3), imshow('fruits3.png');
