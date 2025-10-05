clear; clc; close all;

Nx = 2000;
x_all = linspace(-2, 1, Nx);
y_upper = 1.6;
tol_bis = 1e-6;
order = 15;

y_bound = nan(size(x_all));

for i = 1:numel(x_all)
    x = x_all(i);
    fn = indicator_fn_at_x(x);
    if fn(0)<0 && fn(y_upper)>0
        y_bound(i) = bisection(fn, 0, y_upper, tol_bis);
    end
end

valid = ~isnan(y_bound);
x_data = x_all(valid);
y_data = y_bound(valid);

p = polyfit(x_data, y_data, order);
L = poly_len(p, min(x_data), max(x_data));

fprintf('Points: %d | Length: %.6f\n', numel(x_data), L);

figure;
scatter(x_data, y_data, 5, 'filled'); hold on;
xx = linspace(min(x_data), max(x_data), 1000);
plot(xx, polyval(p,xx), 'r','LineWidth',1.5);
xlabel('x'); ylabel('y'); grid on;
title('Mandelbrot Boundary & Polynomial Fit');
