% Transfer function:
% 12 / (s3^ + 6s^2 + 11s + 6) 

num=[12];
den=[1 6 11 6];
[numd,dend]=c2dm(num,den,1,'zoh');

% numd = 0       0.5052    0.5084    0.0252 
% dend = 1.0000 -0.5530    0.0748   -0.0025

% Transfer function:
% G(z) =
%       Y(z) / U(z) =
%       (0*z^3 + 0.5052*z^2 + 0.5084*z + 0.0252) /
%       (1*z^3 - 0.5530*z^2 + 0.0748*z - 0.0025)

% Data matrix rows:
% y(k) = 0.5530*y(k-1) - 0.0748*y(k-2) + 0.0025*y(k-3)) + (0.5052*u(k-1) + 0.5084*u(k-2) + 0.0252*u(k-3)

% inputRandom and DiscreteOut come from running the model_simple.slx
load('inputRandom')
load('DiscreteOut')

u = inputRandom.Data;
y = DiscreteOut.Data;

matrix = ones(99,7);

for i = 4:101
    matrix(i-2,:) = [y(i-1) y(i-2) y(i-3) u(i-1) u(i-2) u(i-3) y(i)];
end
   
% For example use the first 70% as training and last 30% as testing
% Findcluster is not needed at all

% Two clustering techniques should be used and compared,
% from the point of view of the precision of the obtained fuzzy model.

% Grid Partitioning approach, using genfis1 function;
% Fuzzy c-Means (FCM) Clustering, using genfis3 function.

allIn = matrix(:,1:6);
allOut = matrix(:,7);

% fcmFIS = genfis3(allIn,allOut,'sugeno',5);

trainIn = allIn(1:70,:);
trainOut = allOut(1:70);
trainAll = [trainIn trainOut];

testIn = allIn(71:99,:);
testOut = allOut(71:99);
testAll = [testIn testOut];

fcmfis = genfis3(trainIn, trainOut, 'sugeno',5);
fcmoutput = evalfis(testIn, fcmfis);
fcmmse = calculateMSE(testOut, fcmoutput)

scfis = genfis2(trainIn, trainOut, 1);
scoutput = evalfis(testIn, scfis);
scmse = calculateMSE(testOut, scoutput)

writefis(fcmfis, 'fcmfis.fis');
writefis(scfis, 'scfis.fis');

% calculate sampling time:

% 1st- compute the roots of the denominator of the transfer function
% (the system poles pi ) with > roots(den).
% 2nd- the time constants  i of the system are the inverse of the poles,  i =-1/pi
% 3rd-the ?Sample time? must be less than the lowest time constant, for example half.
% This leads to small integration errors in Simulink. Other way the simulation
% may evolve to very big values because of the cumulative effect of errors.

%Roots of transfer function:
tfRoots = roots(den);
tc = zeros(length(tfRoots),1);

for i=1:length(tfRoots)
    tc(i) = -1 / tfRoots(i)
end

% Smallest constant is 0.333, and sample time must be less than the lowest
% time constant. Let's use 0.2.


