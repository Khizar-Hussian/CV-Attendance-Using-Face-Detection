function [] = recognizeFaces(Image,trainingImage,mu,omega)
%RECOGNIZEFACE Summary of this function goes here
%   Detailed explanation goes here

faces = extractFaces(Image,50);
[fRows,fCols] = size(faces);

for i=1:1:fCols
    
   index = testFace(trainingImage,faces(:,i),mu,omega);
   

end

