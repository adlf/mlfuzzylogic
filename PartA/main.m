%
%   Machine Learning - Fuzzy Control
%   Main program
%

function main
    
    %% -- Controller type
    fuzzy_inference_type = menu('Fuzzy Inference Type','Mamdani','Sugeno')
    
    %% -- Number of rules
    num_rules = menu('Number of rules','9','25')
    
    %% -- Controller's Reference functions
    reference_function = menu('Reference Function','Sinusoidal','Square')

    %% -- Controller's Membership functions (Slides p. 383)
    membership_function = menu('Membership Function','Gaussian','Triangular')

    %% -- 
    
    

end


