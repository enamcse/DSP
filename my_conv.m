function[y] = my_conv(x,h)
n = length(x);
m = length(h);
y = zeros([1 n+m-1]);
for N = 1 : n+m-1
   for X = 1 : n
%        display(N);
%        display(X);
%        display(N-X+1);
       if N - X + 1< 1 || N - X + 1 > m
           continue;
       end
%        disp('yes');
       y(N) = y(N) + x(X) * h(N - X + 1);
   end
end

% plot(y, 'm-o'); hold on;
% stem(y);