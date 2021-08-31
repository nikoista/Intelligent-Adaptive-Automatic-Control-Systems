function dstate = dynamics(t,state)

%Open Loop System
u=0;

% THETA for our Diffenctial Function
theta = [ -0.018 , 0.015 , -0.062, 0.009 ,0.021 ,0.75];

% Dynamic System.
% f_dot=p
% p_dot = theta(1)*f + theta(2)*f + (theta(3)*abs(f) + theta(4)*abs(p))*p + theta(5)*(f^3) + theta(6)*u;

dstate(1)=state(2);
dstate(2)= theta(1)*state(1) + theta(2)*state(2)+ (theta(3)*abs(state(1)) + theta(4)*abs(state(2)))*state(2) + theta(5)*(state(1)^3) + theta(6)*u;
dstate=dstate';


end
