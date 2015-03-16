function f = fin(t)
%function f = fin(t)
%Trapezoid function
%example:
%x = [];
%for i = -2:0.5:20
%    x = [x fin(i)]
%end
%plot(-2:0.5:20,x)
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

f_max = 1.7;

%outside of trapezoid region
if (t<=0)||(t>15)
    f = 0;
    return;
end

%going "up"
if (t>0)&&(t<=5)
    f = f_max/5*t;
    return;
end

%plateu
if (t>5)&&(t<=10)
    f = f_max;
    return;
end

%going "down"
if (t>10)&&(t<=15)
    f = f_max - f_max/5*(t-10);
    return;
end


