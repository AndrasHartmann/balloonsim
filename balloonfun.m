function dx_dt = balloonsim(t, x, params)
%function dx_dt = balloonsim(t, x, params)
%Differential equations of the balloon function as described in
%Cui, X., Bray, S., & Reiss, A. (2010). Functional near infrared spectroscopy (NIRS)
%signal improvement based on negative correlation between oxygenated and deoxygenated 
%hemoglobin dynamics. Neuroimage, 49(4).
%
%Copyright (C) 2013-2015  Andras Hartmann <andras.hartmann@gmail.com>
%
%This file is part of balloonsim, a software for the simulation of the balloon function 
%between oxygenated and deoxygenated hemoglobin dynamics
%
%balloonsim is free software: you can redistribute it and/or modify
%it under the terms of the GNU General Public License as published by
%the Free Software Foundation, either version 3 of the License.
%
%This program is distributed in the hope that it will be useful,
%but WITHOUT ANY WARRANTY; without even the implied warranty of
%MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%GNU General Public License for more details.
%
%You should have received a copy of the GNU General Public License
%along with this program.  If not, see <http://www.gnu.org/licenses/>.

%parameters
E0 = params(1);
T0 = params(2);
Tv = params(3);
a = params(4);

%functions
f_in = fin(t);
E = Efun(t, E0);

%Uncomment one of these to have constant E
%E = 0;
%E = 1.7;

%states
q = x(1);
v = x(2);
p = x(3);

%diff equations
dq_dt = f_in/T0*(E/E0 - q/v) + 1/Tv*(f_in - v^(1/a))*q/v;
dv_dt = 1/Tv*(f_in - v^(1/a));
dp_dt = 1/Tv*(f_in - v^(1/a))*p/v;

%wrap it to the output vector
dx_dt = [ dq_dt; dv_dt; dp_dt];
