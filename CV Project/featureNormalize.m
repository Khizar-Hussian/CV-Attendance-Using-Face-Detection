function [X_norm, m, sigma] = featureNormalize(X)

%calculating mean face from training faces
M = size(X,2);
m = sum(X,2)/M;
X_norm = X-repmat(m,1,M);

sigma = std(X_norm);

% ============================================================
end
