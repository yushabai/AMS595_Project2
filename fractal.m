function it = fractal(c)
    MAX_ITER = 100;
    z = 0;
    it = 0;
    for k = 1:MAX_ITER
        z = z*z + c;
        if abs(z) > 2.0
            it = k;
            return;
        end
    end
    it = 0;
end

