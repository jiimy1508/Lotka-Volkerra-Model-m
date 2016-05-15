clear all
clf
% x son presas.... y son depredadores
% limites del modelo... unidades en meses
l = 0;  % lower
u = 20;  % upper

n = 500;  % numero de puntos

h = (u-l)/(n-1);  % incremento

% valores iniciales del modelo
x0 = 75; % presas iniciales
y0 = 50; % depredadores iniciales

% valores del modelo
a = .4;  % tasa de crecimiento de presas
b = .8;  % tasa de decrecimiento por interaccion en presas
c = .2;  % tasa de decremento en depredadores
d = .4;  % tasa de crecimiento por interaccion en depredadores


% puntos criticos del sistema osea valores iniciales
%       1    2
x_pc = [0, d / c];
y_pc = [0, a / b];


[t] = gen_t(n, h);
[fx_an, fy_an] = analitic_laplace(a, b, c, d, x0, y0, t);

%subplot(2,1,1)
plot(t, fx_an, 'k', t, fy_an, 'b');
grid();
xlabel("meses");
ylabel("especimens");
legend("pesas","depredadores")

%subplot(2,1,2);
%plot_quiver(fx_an, fy_an, a*c/b*fx_an,-b*d/c*fy_an,x_pc(2),y_pc(2));
%title ('quiver plot')