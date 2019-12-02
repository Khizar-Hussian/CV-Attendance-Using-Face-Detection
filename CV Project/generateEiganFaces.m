function [eiganFaces,omega] = generateEiganFaces(faces, eiganVectors)

%create eigan faces using eigan vectors
 eiganFaces = faces*eiganVectors;
 omega = eiganFaces'*faces;
% =============================================================

end
