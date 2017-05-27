f = 500;
t = 0 : 0.0001 : 0.5;
x1 = 100 * sin(2 * pi * f * t);
x2 = 100 * sin(2 * pi * 2 * f * t);
x3 = 100 * sin(2 * pi * 4 * f * t);
% subplot(3, 1, 1); plot(t, x1);
% subplot(3, 1, 2); plot(t, x2);
% subplot(3, 1, 3); plot(t, x3);
% figure;
x = x1 + x2 + x3;
% plot(x);

%% fft code 
N = 1024;
X = fft(x,N);
axis tight
% plot(abs(X(1:N/2)));

%% convolution
x = [1 2 3 4 8 4];
h = [2 3 1 -9 -9 -9 -9 -9 -2 1];
y = conv(x,h);

% plot(y);
% plot(y, 'm+');
% plot(y, 'm-+');
% stem(y);

subplot(2,1,1); plot(y, 'm-o'); hold on;
stem(y);

y = my_conv(x,h);
subplot(2,1,2); plot(y, 'm-o'); hold on;
stem(y);
%% filter
% [b, a] = butter(8, 0.25, 'low');
% y = filter(b,a,x);
% Y = fft(y,N);
% plot(abs(Y(1:N/2)));

