clear all
x = 10 % normal value
x = [1 2 3] % matrix or vector
x = 10
y = 10
x * y %normal multiplication
x = magic(3) % magic matrix - same row, column, diagonal sum
y = magic(3)
x * y % matrix multiplication
x = 1 : 10
y = log(x)
plot(x,y)
f = 500;
t = 0 : 0.0001 : 0.5;
x1 = 100 * sin(2 * pi * f * t);
plot(x1);
plot(t,x1);