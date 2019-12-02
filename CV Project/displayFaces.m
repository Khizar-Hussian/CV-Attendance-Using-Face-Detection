function [] = displayFaces(X, resizeFactor, scaleFactor)

%display each face placed in columns of the input matrix X
for j=1:size(X,2)
    figure, imshow(uint8(imresize(reshape(X(:,j),[resizeFactor resizeFactor]),scaleFactor)));
end

end
