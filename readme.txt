DESCRIPTION:

 This program is called balloonsim, a MATLAB(tm) software
 for simulating the balloon model using differential equations  as described in
 Cui, X., Bray, S., & Reiss, A. (2010). Functional near infrared spectroscopy (NIRS)
 signal improvement based on negative correlation between oxygenated and deoxygenated 
 hemoglobin dynamics. Neuroimage, 49(4).


 MATLAB	:  Version 7.10.0.499 (R2010a) 
 OS	:  GNU/Linux
 AUTHOR	:  Andras Hartmann
 CONTACT:  andras.hartmann@gmail.com


LICENSE:

 balloonsim is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with this program.  If not, see <http://www.gnu.org/licenses/>.

RUNNING:
 Run the script simballoon.m

KNOWN ISSUES:

 - The initial values for the states might not be in their physiological
    range, you can set the initial values in simballoon.m line 31 - 33

 - To change E to constant value uncomment / change 32 - 33 in balloonfun.m
