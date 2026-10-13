dy = @(x,y) x*y;
f  = @(x) exp(x.^2/2);

x0 = 0;  xn = 1;  y0 = 1;  h = 0.1;

N = round((xn - x0)/h);
x_vals = linspace(x0, xn, N+1);
y_vals = zeros(1, N+1);
y_vals(1) = y0;

for i = 1:N
    y_vals(i+1) = y_vals(i) + dy(x_vals(i), y_vals(i)) * h;
end

fprintf('  x      y (Euler)   y (analytical)\n');
for i = 1:N+1
    fprintf('%5.1f   %8.4f   %8.4f\n', x_vals(i), y_vals(i), f(x_vals(i)));
end

plot(x_vals, y_vals, 'b+', 'MarkerSize', 8)
hold on
plot(x_vals, f(x_vals), 'r-')
title('Euler Method: dy/dx = xy')
xlabel('x'); ylabel('y')
xlim([0 2]); ylim([0 2])
legend('Euler', 'Analytical')
grid on
