  function y = rescale(x)
	
     L = [0,.06:.05:1.02];
     V = [.1,.18,.26,.32,.38,.44,.50,.54,.58,.62,.66,.70,.74,.78,.82,.86,.9,.94,.98,1];

     y = x;
     for k=1:numel(x);
        y(k) = V(sum(L<=x(k)));
     end;
  end;

   t=0:0.001:1;
   plot(t,rescale(t));
