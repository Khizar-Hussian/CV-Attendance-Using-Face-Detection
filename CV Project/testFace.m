function [index] = testFace(eigFac, image, mu, omega)
%TESTFACE Summary of this function goes here
%   Detailed explanation goes here

faceCount = size(eigFac,2);

%generating eigan face projection of test face using trained eigan faces
image = image-mu;
om = eigFac'*image;
d = repmat(om,1,faceCount)-omega;
dist = zeros(faceCount,1);

%calculating euclidean dist with each train image
for i=1:faceCount
    dist(i,1)=norm(d(:,i));
end

index=0;
min_element = min(dist);

%check if min dist within no detection threshold
if min_element < 1.0e+7
    %find image having min euclidean dist with test image
    for i=1:1:size(dist,1)
        if dist(i,1) == min_element
            index = i;
            break;
        end
    end
end


end

