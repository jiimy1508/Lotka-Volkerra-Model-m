%% gen_t: function description
function [t] = gen_t(n,  % numero de puntos
					 h)  % incremento
	t = 0;
	for k = 2 : n
		t(k) = t(k-1) + h;
	end
endfunction
