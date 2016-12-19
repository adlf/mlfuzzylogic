function mse = calculateMSE( input, target )
% Compare with the target, compute the squared error in each instant,
% sum them and divide by the number of instants and the mse is obtained.

    mse = 0;

    if length(input) ~= length(target)
        disp('calculateError: lengths of input variables are different')
        mse = 0;
        return
    end
    
    for i = 1:length(input)
        inputVal = input(i);
        targetVal = target(i);
        diff = abs(inputVal - targetVal);
        squared = sqrt(diff);
        mse = mse + squared;
    end
    
    mse = mse / length(input);
    
end

