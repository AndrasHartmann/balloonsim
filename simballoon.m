%script to simulate the balloon function as described in
%Cui, X., Bray, S., & Reiss, A. (2010). Functional near infrared spectroscopy (NIRS)
%signal improvement based on negative correlation between oxygenated and deoxygenated 
%hemoglobin dynamics. Neuroimage, 49(4).
%
%Copyright (C) 2013  Andras Hartmann <andras.hartmann@gmail.com>
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

%constant parameters
E0 = 0.4;
T0 = 2;
Tv = 30;
a = 0.4;

myparams = [E0 T0 Tv a]';

%time
tspan = linspace(0,25);

%initial states (set these to real values)
q0 = 1;
v0 = 1.5;
p0 = 3;

y0 = [q0 v0 p0]'; 

[t, y] = ode45(@(t,y) balloonfun(t, y, myparams),tspan,y0);

%figures

figure;
plot(t, y')
title('States');
legend('q', 'v', 'p');

%oxy vs deoxy HB
figure;
plot(t,[y(:,1) y(:,3) - y(:,1)])
title('Oxy vs. Deoxy Hb');
legend('Deoxy Hb', 'Oxy Hb' );
