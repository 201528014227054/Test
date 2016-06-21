%test DoG检测子和Harris-Laplacian检测子的实验结果
clc; close all; clear all;

%% Add path
addpath('KeypointDetect');
img = imread('C:\Users\wzq\Desktop\fouth_HW\data\yosemite2.jpg');

%img=im2double(img);
points_HL = kp_harrislaplace(rgb2gray(img));
[features, pyr, imp, pts_DOG] = detect_features_DOG(img, 1.5, 0,3,4, 4, 4, 0.04,5);
%plotpoints(points_HL,img);
showfeatures(features,img);