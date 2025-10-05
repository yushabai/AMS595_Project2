# AMS595_Project2

---

###  **Overview**

This project explores the *coastline paradox* through numerical approximation of the **Mandelbrot set boundary**.  
By measuring the “coastline length” of the Mandelbrot set’s upper boundary at different resolutions, we illustrate how the measured length depends on the scale of observation — a direct analogy to Benoit Mandelbrot’s question, *“How long is the coast of Britain?”*


---

###  **Key Methods**

* **Fractal generation:** Iterative formula \( z_{k+1} = z_k^2 + c \)
* **Boundary detection:** 1D indicator function + **bisection root-finding**
* **Polynomial fitting:** 15th-order least-squares fit using `polyfit()`
* **Arc length computation:** Numerical integration of \( L = \int \sqrt{1+(f'(x))^2}\,dx \)

---

###  **Results**

* Approx. **1500 valid boundary points**
* Polynomial order: **15**
* Computed arc length: **L ≈ 3.08**
* The plot below shows the discrete boundary points (blue) and polynomial fit (red).

![Mandelbrot Boundary Fit](Mandelbrot_Figure.png)

---

###  **Discussion Summary**

The estimated boundary length increases with resolution, confirming the fractal nature of the Mandelbrot set.  
This numerical experiment demonstrates how measurement scale affects apparent “length,” mirroring the *coastline paradox*.  
The smoother polynomial fit approximates the fractal boundary while reducing numerical noise, producing a finite, scale-dependent “coastline” value.

---

###  **How to Run**

1. Open MATLAB and place all `.m` files in the same directory.  
2. Run the main script:

   ```matlab
   >> run('Proj2_main.m')


