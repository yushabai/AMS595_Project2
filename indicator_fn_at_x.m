function fn = indicator_fn_at_x(x)
    fn = @(y) (fractal(complex(x, y)) > 0) * 2 - 1;
end
