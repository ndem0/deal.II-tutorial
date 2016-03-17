#  Lab XX
## Deal.II Users and Developers Training 
### SMR2909 - MHPC P2.5

**Timo Heister** <heister@clemson.edu> 
and
**Luca Heltai** <luca.heltai@sissa.it>

* * * * *

1.  See documentation of step-3 at\
    <https://www.dealii.org/developer/doxygen/deal.II/step_3.html>

2.  Copy and run step-3.

3.  Switch to vtk output and visualize in paraview.

4.  Follow the instructions in “Modify the type of boundary condition”
    in the description of the tutorial.

5.  Now also do “A slight variation of the last point” but use the value
    -0.5 for the boundary with indicator 1.

6.  Change the setup to have $f=0$.

7.  Switch to an L-shaped domain, experiment with a combination of
    Dirichlet and Neumann boundary conditions.

8.  Bonus: Do “Convergence of the mean”. Can you see the order $h^2$?
    Increase the polynomial order (you need to increase all orders of
    the quadratures in the program!) and check the convergence of the
    mean now.