Balloonsim
==============

Functions to simulate the differential equations of the balloon function as described in
Cui, X., Bray, S., & Reiss, A. (2010). Functional near infrared spectroscopy (NIRS)
signal improvement based on negative correlation between oxygenated and deoxygenated 
hemoglobin dynamics. Neuroimage, 49(4).



Cite this software
--------------
[![DOI](https://zenodo.org/badge/doi/10.5281/zenodo.16096.svg)](http://dx.doi.org/10.5281/zenodo.16096)



Installation
--------------

$tar -xzf ballonsim.tar.gz

Make the directory son-em accessible to MATLAB


Software info
--------------
* License GPL v3

###Prerequisites:
* MATLAB (Tested on 7.14.0.739 (R2012a) and 7.10.0.499 (R2010a))
* or octave (Tested on 3.2.4)
* OS	: Tested on GNU/Linux (but should be in general OS-independent)

###Author information
* AUTHOR	:  Andras Hartmann
* CONTACT:  andras.hartmann@gmail.com

Content
--------------
balloonfun.m        -> Differential equations of the balloon function
Efun.m              -> E function
fin.m               -> Trapezoid function
license.txt         -> License file (GPL v3)
README.md           -> This file
simballoon.m        -> Script for running the simulation


KNOWN ISSUES
--------------

* The initial values for the states might not be in their physiological
    range, you can set the initial values in simballoon.m line 31 - 33

* To change E to constant value uncomment / change 32 - 33 in balloonfun.m


