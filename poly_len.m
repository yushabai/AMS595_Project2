function l = poly_len(p, s, e)
    dp = polyder(p);
    ds = @(x) sqrt(1 + (polyval(dp, x)).^2);
    l = integral(ds, s, e, 'AbsTol', 1e-10, 'RelTol', 1e-8);
end
