%% encontrar_puntos_criticos: function description
function [fx, fy] = analitic_laplace(a, b, c, d, x0, y0, t)
	fy = c*d*y0*cos(t*sqrt(a*d))-a*c^2*x0*sin(t*sqrt(a*d))/sqrt(a*d);
	fx = 0*t;%x0*sqrt(-b^2*c*d+b*c^2*a)*exp(sqrt(-b^2*c*d+b*c^2*a)*t)/2-b*d*y0*cos(sqrt(b^2*c*d-b*c^2*a)*t)
endfunction
