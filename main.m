clear all; close all; clc
% Original Image
Im = imread('spine.tif');
% Reference image for histogram specification
ref = imread('shadow.tif');

filters(Im, ref)
figure
Im = imread('images/office.tif');
filters(Im, ref)
