# AMS595_Project2

---

## Overview

This repository contains MATLAB code for estimating the *coastline length* of the Mandelbrot set, inspired by Mandelbrot’s question:  
**“How long is the coast of Britain?”**

The program computes the upper boundary of the Mandelbrot set using numerical methods, then approximates its length through polynomial fitting and integration.  
The workflow consists of four main components:

**1. Fractal Test (`fractal.m`):**  
Determines whether a complex point \( c = x + iy \) belongs to the Mandelbrot set by iterating  
\( z_{k+1} = z_k^2 + c \).  
Points diverging (‖z‖ > 2) are classified as outside the set.

**2. Boundary Detection (`indicator_fn_at_x.m` + `bisection.m`):**  
For each fixed x, the function evaluates vertical points \( y \in [0, 1.6] \).  
The bisection algorithm identifies where the sign changes, locating boundary points.

**3. Polynomial Fitting (`polyfit`):**  
Boundary points \((x_i, y_i)\) are fitted using a 15th-order polynomial.  
This smooths the discrete data and produces a differentiable curve.

**4. Arc Length Computation (`poly_len.m`):**  
The fitted polynomial \( y = f(x) \) is integrated numerically:
\[
L = \int_a^b \sqrt{1 + (f'(x))^2}\, dx
\]
to estimate the boundary’s “coastline length”.

---


