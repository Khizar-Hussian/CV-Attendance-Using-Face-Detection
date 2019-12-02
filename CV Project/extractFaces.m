function [faces] = extractFaces(image,resizeFactor)
%FACEEXTRACTION Summary of this function goes here
%   Detailed explanation goes here
image = rgb2gray(image);

FDetect = vision.CascadeObjectDetector;
I = step(FDetect,image);

faces = zeros(resizeFactor*resizeFactor,size(I,1));

for i=1:size(I,1)
   croppedImage = imcrop(image,I(i,:)); 
   resizedImage = imresize(croppedImage,[resizeFactor resizeFactor]);
   shapedImage = reshape(resizedImage,[],1);
   faces(:,i) = shapedImage;
end

end

