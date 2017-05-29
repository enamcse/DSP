function[X] = my_fft(x,N)
n = length(x);
X = zeros([1 N]);
for k = 1 : N
    X(k) = 0;
    for m = 1 : N
        X(k) = X(k) + x(m)*exp(-(2*pi/N)*(k-1)*(m-1)*1i);
    end
end