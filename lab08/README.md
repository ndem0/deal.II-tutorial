#  Lab XX - Manifolds (step-38+)
## Deal.II Users and Developers Training 
### SMR2909 - MHPC P2.5

**Timo Heister** <heister@clemson.edu> 
and
**Luca Heltai** <luca.heltai@sissa.it>

* * * * *


1.  The topic of this lab session is a modified version of step-38 made
    available for you as **lab-7**\
    <https://www.dealii.org/developer/doxygen/deal.II/step_38.html>

2.  Run the program and check the graphical and text output.

3.  Modify the code to compute L2 and H1 errors and generate convergence
    plots for different mapping degrees and different Finite Element
    orders.

4.  Implement `compute_area` that computes the area of our domain
    $\Omega_h$ by integrating $\int_\Omega 1 \;dx$. The code is similar
    to the matrix assembly, except that we are just computing
    $$\int_\Omega 1 \;dx \approx \sum_T \sum_q w_q$$ Check that the area
    is converging to the correct value and that a higher order mapping
    helps.

5.  Switch the mesh to a torus with R=1.0 and r=0.6 and check that the
    area is converging correctly.





1.  The goal of this lab session is to modify **lab-7** to solve a
    problem defined on the surface of the torus. This program is a
    modified version of step-38\
    <https://www.dealii.org/developer/doxygen/deal.II/step_38.html>

2.  Switch the mesh to a torus with R=1.0 and r=0.6 and check that the
    area is converging correctly. See `GridGenerator::torus()` and the
    class `TorusBoundary` with constructor

         TorusBoundary<dim,spacedim>::TorusBoundary(R, r)

    You need to add the following include at the top of the file:

         #include <deal.II/grid/tria_boundary_lib.h>

    Finally: open up the solutions and check that the torus is refined
    correctly.

3.  Without a boundary, the problem is not uniquely solvable, so we add
    the constraint $\int_\Omega u = 0$. We need to make sure our
    analytic solution and our discrete solution satisfy this. Compute
    the mean value using

          template <int dim, typename VectorType, int spacedim>
          double VectorTools::compute_mean_value (const DoFHandler<dim,spacedim> &dof,
                                     const Quadrature<dim>          &quadrature,
                                     const VectorType               &v,
                                     const unsigned int             component);

    at the end of `solve()` (`component` is 0, `v` is `solution`) and
    then subtract it using

          solution.add(-mean);
         

    finally verify that the mean is now close to zero by computing it
    again.

    Note: how come the linear solver converges even though the linear
    system is singular?

4.  Open `surfacelaplacian_torus.mw` in maple and find the right-hand
    side $f$ that belongs to the solution
    $$u = \sin(3\phi)\cos(3\theta+\phi)$$ that you can plug into the
    code (`Solution<3>::value`) as:

            double x = p(0);
            double y = p(2);
            double z = p(1);
            double r = 0.6;
            double R = 1.0;
            double phi = atan2(y,x);
            double theta = asin(z/r);
            if (x*x+y*y < R*R)
              theta = ((z>0)?1.0:-1.0)*numbers::PI - theta;
            return sin(3*phi)*cos(3*theta+phi);  
         

    Note that y and z are swapped between maple and the code.

5.  Now make sure L2 norms are converging and you get optimal rates when
    using a higher order mapping.

6.  Bonus: implement the gradient from the spreadsheet and check H1
    errors.





1.  The goal of this lab session is to modify **lab-9** to solve a
    problem defined on the surface with a kink. This program is a
    modified version of step-38\
    <https://www.dealii.org/developer/doxygen/deal.II/step_38.html>

2.  Implement the manifold for the surface $$\chi(x,y) = (x,y,z(x,y))$$
    with $$z(x,y) = \max(0, 3/4-x^2-y^2)^{1+\alpha}$$ where
    $\alpha=\frac{3}{2}$ (or later $\alpha=\frac{2}{5}$) in the class
    `KinkedManifold` and use this manifold on the surface $[-1,1]^2$ in
    `make_grid()`. Start with one global refinement. Check visually,
    that the surface is refined correctly.

3.  Implement the right-hand side, boundary conditions, and reference
    solution from the maple spreadsheet
    `surfacelaplacian_nonsmoothgraph.mw`

4.  Check $L^2$ convergence. You might need a tighter linear solver
    tolerance to see convergence on fine meshes.

5.  Bonus: implement the gradient from the spreadsheet and check $H^1$
    errors.

6.  Bonus: implement and check the version with $\alpha=\frac{2}{5}$.

7.  Bonus: implement adaptive refinement.


