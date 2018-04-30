function vec = triu2vec(mat,k)

% This function simply gets the upper triangle of a matrix and converts it
% to a vector

onesmat = ones(size(mat));
UT = triu(onesmat,k);
vec = mat(UT == 1);

end