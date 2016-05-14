clear all
clf
% x son presas.... y son depredadores
% limites del modelo... unidades en meses
l = 0;  % lower
u = 40;  % upper

n = 30;  % numero de puntos

h = (u-l)/(n-1);  % incremento

% valores iniciales del modelo
x0 = 75; % presas iniciales
y0 = 45; % depredadores iniciales

% valores del modelo
a = 1;  % tasa de crecimiento de presas
b = 1;  % tasa de decrecimiento por interaccion en presas
c = 1;  % tasa de decremento en depredadores
d = 1;  % tasa de crecimiento por interaccion en depredadores


% puntos criticos del sistema osea valores iniciales
%       1    2
x_pc = [0, d / c];
y_pc = [0, a / b];


[t] = gen_t(n, h);
[fx_an, fy_an] = analitic_laplace(a, b, c, d, x0, y0, t);

plot(t, fx_an, 'k', t, fy_an, 'b');
grid();
xlabel("meses");
ylabel("especimens");
legend("pesas","depredadores")