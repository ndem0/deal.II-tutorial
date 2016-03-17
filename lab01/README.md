#  Lab XX
## Deal.II Users and Developers Training 
### SMR2909 - MHPC P2.5

**Timo Heister** <heister@clemson.edu> 
and
**Luca Heltai** <luca.heltai@sissa.it>

* * * * *

1.  Setup

    -   Edit file ``~/.bashrc.local`` to contain the line\
        ``source /apps/timo/startup.sh``\
        and close and re-open your terminal. You can use
        ``gedit ~/.bashrc.local``\
        Check that this worked by typing ``echo $DEAL_II_DIR``

    -   Please note:

        -   ``/apps/timo/`` – files for the lecture, script to set up your
            environment, some tools

        -   ``/apps/timo/examples/`` – selected collection of example
            programs

        -   ``/apps/timo/documents/`` – slides and labs

        -   ``/apps/deal.II/deal.II-dev`` – installation of a current
            deal.II version

        -   ``/apps/deal.II/deal.II-dev/examples`` – all tutorial programs

    -   to make a copy of tutorial 1, configure, compile, and run it:

            cp -r /apps/timo/examples/step-1 ~/
            cd ~/step-1
            cmake .
            make
            ./step-1

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


