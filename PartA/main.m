% load all .fis files into the workspace
% so we can load the models .slx
clear;
%mamdani_9_rules_trimf_centroid = readfis('controllers/mamdani_9_rules_trimf_centroid.fis');;
%mamdani_9_rules_trimf_medmax = readfis('controllers/mamdani_9_rules_trimf_medmax.fis');;
%mandami_9_rules_gaussmf_centroid = readfis('controllers/mandami_9_rules_gaussmf_centroid.fis');;
%mandami_9_rules_gaussmf_mom = readfis('controllers/mandami_9_rules_gaussmf_mom.fis');;
%sugeno_9_rules_gaussmf_wtaver = readfis('controllers/sugeno_9_rules_gaussmf_wtaver.fis');;
%sugeno_9_rules_gaussmf_wtsum = readfis('controllers/sugeno_9_rules_gaussmf_wtsum.fis');;
%sugeno_9_rules_trimf_wtaver = readfis('controllers/sugeno_9_rules_trimf_wtaver.fis');;
%sugeno_9_rules_trimf_wtsum = readfis('controllers/sugeno_9_rules_trimf_wtsum.fis');;

%mamdani_25_rules_gaussmf_centroid = readfis('controllers/mamdani_25_rules_gaussmf_centroid.fis');;
%mamdani_25_rules_gaussmf_medmax = readfis('controllers/mamdani_25_rules_gaussmf_medmax.fis');;
%mamdani_25_rules_trimf_centroid = readfis('controllers/mamdani_25_rules_trimf_centroid.fis');;
%mamdani_25_rules_trimf_medmax = readfis('controllers/mamdani_25_rules_trimf_medmax.fis');;
%sugeno_25_rules_gaussmf_wtaver = readfis('controllers/sugeno_25_gaussmf_wtaver.fis');;
%sugeno_25_rules_gaussmf_wtsum = readfis('controllers/sugeno_25_gaussmf_wtsum.fis');;
%sugeno_25_rules_trimf_wtaver = readfis('controllers/sugeno_25_trimf_wtaver.fis');;
%sugeno_25_rules_trimf_wtsum = readfis('controllers/sugeno_25_trimf_wtsum.fis');;


mamdani_9_rules_trimf_medmax = readfis('controllers/mamdani_9_rules_trimf_medmax.fis');
mamdani_9_rules_gaussmf_medmax = readfis('controllers/mamdani_9_rules_gaussmf_medmax.fis');
mamdani_9_rules_trimf_centroid = readfis('controllers/mamdani_9_rules_trimf_centroid.fis');
mamdani_9_rules_gaussmf_centroid = readfis('controllers/mamdani_9_rules_gaussmf_centroid.fis');

sugeno_9_rules_trimf_wtaver = readfis('controllers/sugeno_9_rules_trimf_wtaver.fis');
sugeno_9_rules_trimf_wtsum = readfis('controllers/sugeno_9_rules_trimf_wtsum.fis');
sugeno_9_rules_gaussmf_wtsum = readfis('controllers/sugeno_9_rules_gaussmf_wtsum.fis');
sugeno_9_rules_gaussmf_wtaver = readfis('controllers/sugeno_9_rules_gaussmf_wtaver.fis');

mamdani_25_rules_trimf_medmax = readfis('controllers/mamdani_25_rules_trimf_medmax.fis');
mamdani_25_rules_gaussmf_medmax = readfis('controllers/mamdani_25_rules_gaussmf_medmax.fis');
mamdani_25_rules_trimf_centroid =  readfis('controllers/mamdani_25_rules_trimf_centroid.fis');
mamdani_25_rules_gaussmf_centroid = readfis('controllers/mamdani_25_rules_gaussmf_centroid.fis');

sugeno_25_rules_gaussmf_wtaver = readfis('controllers/sugeno_25_rules_gaussmf_wtaver.fis');
sugeno_25_rules_gaussmf_wtsum = readfis('controllers/sugeno_25_rules_gaussmf_wtsum.fis');
sugeno_25_rules_trimf_wtaver = readfis('controllers/sugeno_25_rules_trimf_wtaver.fis');
sugeno_25_rules_trimf_wtsum = readfis('controllers/sugeno_25_rules_trimf_wtsum.fis');

disp('All .fis files loaded.');
disp('You can now run the simulink models in the models folder.')
