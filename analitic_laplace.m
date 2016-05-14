%% encontrar_puntos_criticos: function description
function [fx, fy] = analitic_laplace(a, b, c, d, x0, y0, t)
	fy = c*d*y0*cos(t*sqrt(a*d))-a*c^2*x0*sin(t*sqrt(a*d))/sqrt(a*d);
	fx = b*c^2*x0*cos(t*sqrt(a*d))-b*c*d*y0*sin(t*sqrt(a*d));
endfunction
