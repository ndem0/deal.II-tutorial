#  Lab 01 - Introduction
## Deal.II Users and Developers Training 
### SMR2909 - MHPC P2.5

**Timo Heister** <heister@clemson.edu> 
and
**Luca Heltai** <luca.heltai@sissa.it>

* * * * *

1.  Setup

    -   Edit file ``~/.bashrc`` to contain the line\
        ``source /scratch/smr2909/enable.sh``\
        and close and re-open your terminal. You can use
        ``gedit ~/.bashrc.local``\
	To open an editor. Check that this worked by typing ``echo $DEAL_II_DIR``\
	You should see ``/scratch/smr2909/deal.II/install`` printed to the screen.

    -   Please note, inside ``/scratch/smr2909/`` there are the following folders:

    	- ``labs/`` -- a folder with exercise sheets and example programs

        - ``bin/`` and ``apps/`` -- several programs (you shouldn't need to
          access them directly, because they will be imported into your PATH
          automatically)

        - ``libs/``, ``candi/``, ``candi-build`` -- libraries deal.II depends
          on

        - ``deal.II`` -- source, build, and installation of deal.II.

        -   ``deal.II/dealii/examples/`` -- all tutorial programs

    -   to make a copy of tutorial 1, configure, compile, and run it:

    	```
            cp -r /scratch/smr2909/deal.II/dealii/examples/step-1 ~/
            cd ~/step-1
            cmake .
            make
            ./step-1
	```

    -   IDE: open ``qtcreator`` and "open project" and select
        ``CMakeLists.txt``

2.  Tasks for tutorial step-1:

    1.  See documentation at\
        <https://www.dealii.org/developer/doxygen/deal.II/step_1.html>

    2.  Run and view meshes.

    3.  Comment out the ``.set_manifold(...)`` line. What happens now?

    4.  Create an image of an L-shape domain (add another function to
        step-1).

    5.  Create a 3d torus and refine it 2 times (globally). Try
        outputting to vtk format and open in paraview.

    6.  Refine the L-shaped mesh adaptively around the re-entrant
        corner.

    7.  Bonus: Create a helper function that takes a reference to a
        Triangulation and prints the following information: number of
        levels, number of cells, number of active cells. Test this with
        the (now three) meshes.

    8.  Output a mesh as an svg file instead of eps. Open it in a
        browser to display it.

    9.  Generate a circle using GridGenerator::hyper_sphere() in 2d: use a
        SphericalManifold everywhere, only on the boundary, or on all cells
        except center and refine the mesh.

   10.  Broken program to debug: (don't make Manifold static)
   	"forget" to empty a Triangulation before using GridGenerator the second time.

   11.  Load a mesh from a file (debugging task: wrong dimension)


