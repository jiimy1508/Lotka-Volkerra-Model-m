%% encontrar_puntos_criticos: function description
function [fx, fy] = analitic_laplace(a, b, c, d, x0, y0, t)
	fy = c*d*y0*cos(t*sqrt(a*d))-a*c^2*x0/sqrt(a*d)*sin(t*sqrt(a*d));
	fx = b*c^2*x0*cos(t*sqrt(a*d))-b*c*d*y0/sqrt(a*d)*sin(t*sqrt(a*d));
	%fy = y0*exp(-d*t);
	%fx = x0*exp(a*t);
endfunction
