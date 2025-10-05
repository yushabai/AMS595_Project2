function m = bisection(fn_f, s, e, tol, maxit)
    if nargin < 4, tol = 1e-6; end
    if nargin < 5, maxit = 60; end

    fs = fn_f(s);
    fe = fn_f(e);
    if fs * fe > 0
        error('bisection:badBracket', 'fn_f(s) and fn_f(e) must have opposite signs.');
    end

    for k = 1:maxit
        m = 0.5 * (s + e);
        fm = fn_f(m);
        if fm == 0 || (e - s) / 2 < tol
            return;
        end
        if fs * fm < 0
            e = m; fe = fm;
        else
            s = m; fs = fm;
        end
    end
    m = 0.5 * (s + e);
end

