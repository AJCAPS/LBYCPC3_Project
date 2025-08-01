function data = genTrafficData(T, dt, lambda)
    steps = round(T/dt);
    mu    = lambda(:) * dt;            % Lambda = vehicles
    M     = repmat(mu, 1, steps);      
    data.arrival      = poissrnd(M);   
    data.noisyArrival = data.arrival + round(3*randn(size(M)));
    data.delay        = exprnd(0.2, size(M));
    data.time         = (0:steps-1)*dt;
end
