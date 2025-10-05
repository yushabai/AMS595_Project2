# AMS595_Project2

---

###  **Overview**

This project explores the *coastline paradox* through numerical approximation of the **Mandelbrot set boundary**.  
By measuring the “coastline length” of the Mandelbrot set’s upper boundary at different resolutions, we illustrate how the measured length depends on the scale of observation — a direct analogy to Benoit Mandelbrot’s question, *“How long is the coast of Britain?”*


---

###  **Key Methods**

* **Fractal generation:** Iterative formula  $z_{k+1} = z_k^2 + c$
* **Boundary detection:** 1D indicator function + **bisection root-finding**
* **Polynomial fitting:** 15th-order least-squares fit using `polyfit()`
* **Arc length computation:** Numerical integration of $L = \int \sqrt{1+(f'(x))^2}\,dx$

---

###  **Discussion Summary**

The estimated boundary length increases with resolution, confirming the fractal nature of the Mandelbrot set.  
This numerical experiment demonstrates how measurement scale affects apparent “length,” mirroring the *coastline paradox*.  
The smoother polynomial fit approximates the fractal boundary while reducing numerical noise, producing a finite, scale-dependent “coastline” value.

---



