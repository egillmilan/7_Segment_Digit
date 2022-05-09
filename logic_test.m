clc;
I = [0 0 0 0;
     0 0 0 1;
     0 0 1 0;
     0 0 1 1;
     0 1 0 0;
     0 1 0 1;
     0 1 1 0;
     0 1 1 1;
     1 0 0 0;
     1 0 0 1];

for i = 1:10
    X = I(i, 1);
    Y = I(i, 2);
    Z = I(i, 3);
    W = I(i, 4);
    X_ = not(X);
    Y_ = not(Y);
    Z_ = not(Z);
    W_ = not(W);

    A = logical(X + Z +  Y_*W_ + Y*W);
    B = logical(Y_ + Z_*W_ + Z*W);
    C = logical(Y + Z_ + W);
    D = logical(X + Y_*W_ + not(Y+Z_) + Z*W_ + Y*Z_*W);
    E = logical(Y_*W_ + Z*W_);
    F = logical(X + Y*Z_ + Y*W_ + Z_*W_);
    G = logical(X + not(Y+Z_) + Y*Z_ + Z*W_);
    
    
    out(i,:) = [A B C D E F G];
end
out