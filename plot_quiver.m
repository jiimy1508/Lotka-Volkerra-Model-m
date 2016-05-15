%% plot_quiver: function description
function [] = plot_quiver(X,  % valores de x
								 Y,  % de y
								 u,  % de la derivada de x
								 v,  % de la derivada de y
								 px, % punto critico en x
								 py) % punto critico en y
	
	u;
	v;
	%normal = sqrt(x.^2+y.^2);  % normalized
	%x_normal = x./normal;
	%y_normal = y./normal;

	%[xx,yy] = meshgrid([X(1):0.4:Y(1)]);

	%Ex = -xx./(xx.^2+yy.^2).^(3/2);
	%Ey = -yy./(xx.^2+yy.^2).^(3/2);

	Z = X.*exp(-X.^2 - Y.^2);
	[DX,DY] = gradient(Z,.2,.2);

	figure
	contour(X,Y,Z)
	hold on
	quiver(X,Y,DX,DY)
	hold off

	%quiver(xx,yy,Ex,Ey);
endfunction