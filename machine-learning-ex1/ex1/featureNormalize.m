function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
% X_norm = X;
columnsX = size(X,2);
mu = zeros(1, columnsX);
sigma = zeros(1, columnsX);
X_norm = [];
for m = 1:columnsX
  D = X(:,m);
  M = mean(D);
  SD = std(D);
  D = (D - M)/SD;
  mu(m) = M;
  sigma(m) = SD;
  X_norm = [X_norm D];
 end
end
