function [value,isterminal,direction ] = eventsfun(state,x0)

value = (state(1)-x0).*(state(1)+x0);

isterminal=0;

direction=0;


end

