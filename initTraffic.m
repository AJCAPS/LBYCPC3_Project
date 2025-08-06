% initTraffic.m CALL THIS FUNCTION TO INITIATE THE VALUES IN THE SLX
T           = 600;
dt          = 1;
lambda      = [0.5; 0.7; 0.6; 0.8];
trafficData = genTrafficData(T, dt, lambda);
% Create timeseries objects for intersection #1
tsArr1   = timeseries(trafficData.noisyArrival(1,:)', trafficData.time');
tsDelay1 = timeseries(trafficData.delay(1,:)',        trafficData.time');
L_road      = 5;
serviceRate = 1;
