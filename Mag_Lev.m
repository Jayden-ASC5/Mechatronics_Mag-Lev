function xdot = Mag_Lev(t,x,u)
    xdot = zeros(3,1);

    % Constants
    g = 9.81;
    R = 3.39;
    L = 0.015;
    m = 0.003;
    M = 2.943e-4; % Magnetic Constants

    y = x(1); ydot = x(2); i = x(3);

    V = u;

    xdot(1) = ydot;
    xdot(2) = (1/m)*(m*g - M*((i^2)/(y^2)));
    xdot(3) = (1/L)*(V - R*i);

end