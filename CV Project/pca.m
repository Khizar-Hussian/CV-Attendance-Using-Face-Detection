function [U, S] = pca(X)
%PCA Run principal component analysis on the dataset X
%   [U, S, X] = pca(X) computes eigenvectors of the covariance matrix of X
%   Returns the eigenvectors U, the eigenvalues (on diagonal) in S
%

% You need to return the following variables correctly.
U = zeros(n);
S = zeros(n);

covariance = (X'*X);
[U,S] = eig(covariance);
% =========================================================================

end
