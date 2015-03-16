function E = Efun(t, E0)
%function E = Efun(t, E0)
%E = 1 - (1 - E0)^(1/fin(t))
%example
%E = [];
%for i = -2:0.5:20
%    E = [E Efun(i, 0.4)];
%end
%plot(-2:0.5:20,E);
%note that this gives  division by zero here if t<=0 or t>15, see fin
%
%Copyright (C) 2013-2015 Andras Hartmann <andras.hartmann@gmail.com>
%
%This file is part of balloonsim, a software for
%reconstructing short loss of physiological signals.
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

E = 1 - (1 - E0)^(1/fin(t));
