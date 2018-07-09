%% MATLAB script to run multiple experiments of TURBO2

%% 1000 particles
% turbo2script_multiple('data/turbo2input_1impulsesequence_5cm.txt',50,50)
% turbo2script_multiple('data/turbo2input_1impulsesequence_10cm.txt',50,50)
% turbo2script_multiple('data/turbo2input_2impulsesequence_5cm.txt',50,50)
% turbo2script_multiple('data/turbo2input_2impulsesequence_10cm.txt',50,50)

% turbo2script_multiple('data/turbo2input_1impulsesequence_5cm_BACKGROUND.txt',50,50)
% turbo2script_multiple('data/turbo2input_1impulsesequence_10cm_BACKGROUND.txt',50,50)
% turbo2script_multiple('data/turbo2input_2impulsesequence_5cm_BACKGROUND.txt',50,50)
% turbo2script_multiple('data/turbo2input_2impulsesequence_10cm_BACKGROUND.txt',50,50)

% turbo2script_multiple('data/turbo2input_4impulsesequence_5cm_BACKGROUND.txt',50,50)
% turbo2script_multiple('data/turbo2input_4impulsesequence_10cm_BACKGROUND.txt',50,50)
% turbo2script_multiple('data/turbo2input_5impulsesequence_5cm_BACKGROUND.txt',50,50)
% turbo2script_multiple('data/turbo2input_5impulsesequence_10cm_BACKGROUND.txt',50,50)

%% 500 particles
% turbo2script_multiple('data/turbo2input_1impulsesequence_5cm_500.txt',20,50)
% turbo2script_multiple('data/turbo2input_1impulsesequence_10cm_500.txt',20,50)
% turbo2script_multiple('data/turbo2input_2impulsesequence_5cm_500.txt',20,50)
% turbo2script_multiple('data/turbo2input_2impulsesequence_10cm_500.txt',20,50)

% FOR BACKGROUND EXPERIMENTS:
% TO ALWAYS HAVE AT LEAST 50 of species 2, set ncols = max(abu)+50;    
% turbo2script_multiple('data/turbo2input_1impulsesequence_5cm_BACKGROUND_500.txt', 20,50)
% turbo2script_multiple('data/turbo2input_1impulsesequence_10cm_BACKGROUND_500.txt', 20,50)
% turbo2script_multiple('data/turbo2input_2impulsesequence_5cm_BACKGROUND_500.txt', 20,50)
% turbo2script_multiple('data/turbo2input_2impulsesequence_10cm_BACKGROUND_500.txt', 20,50)
% 
% turbo2script_multiple('data/turbo2input_4impulsesequence_5cm_BACKGROUND_500.txt',20,50)
% turbo2script_multiple('data/turbo2input_4impulsesequence_10cm_BACKGROUND_500.txt',20,50)
% turbo2script_multiple('data/turbo2input_5impulsesequence_5cm_BACKGROUND_500.txt', 20,50)
% turbo2script_multiple('data/turbo2input_5impulsesequence_10cm_BACKGROUND_500.txt', 20,50)


%% Step sequence
% 1 step
% turbo2script_multiple('data/turbo2input_stepsequence_5cm_500.txt', 20,50)
% turbo2script_multiple('data/turbo2input_stepsequence_10cm_500.txt', 20,50)

% 2 steps
% turbo2script_multiple('data/turbo2input_stepsequence2_5cm_500.txt', 20,50)
% turbo2script_multiple('data/turbo2input_stepsequence2_10cm_500.txt', 20,50)

%% gradual increase
% turbo2script_multiple('data/turbo2input_gradualchange1_5cm_500.txt', 20,50)
% turbo2script_multiple('data/turbo2input_gradualchange1_10cm_500.txt', 20,50)
% turbo2script_multiple('data/turbo2input_gradualchange2_5cm_500.txt', 20,50)
% turbo2script_multiple('data/turbo2input_gradualchange2_10cm_500.txt', 20,50)


% sinus curve
% turbo2script_multiple('data/turbo2input_sinuschange1_5cm_500.txt', 20,50)
% turbo2script_multiple('data/turbo2input_sinuschange1_10cm_500.txt', 20,50)

% turbo2script_multiple('data/turbo2input_sinuschange_impuls1_5cm_500.txt', 20,10)
% turbo2script_multiple('data/turbo2input_sinuschange_impuls1_10cm_500.txt', 20,10)
% turbo2script_multiple('data/turbo2input_sinuschange_impulshigher_5cm_500.txt', 20,10)
% turbo2script_multiple('data/turbo2input_sinuschange_impulshigher_10cm_500.txt', 20,10)

% turbo2script_multiple('data/turbo2input_sinuschange_impulshigher2_5cm_500.txt', 20,10)
% turbo2script_multiple('data/turbo2input_sinuschange_impulshigher2_10cm_500.txt', 20,10)

% turbo2script_multiple('data/orbital_cycles/turbo2input_20kyrs_cycle_10cm_500.txt', 20,50)
% turbo2script_multiple('data/orbital_cycles/turbo2input_40kyrs_cycle_10cm_500.txt', 20,50)
% turbo2script_multiple('data/orbital_cycles/turbo2input_100kyrs_cycle_10cm_500.txt', 20,50)
% 
% turbo2script_multiple('data/orbital_cycles/turbo2input_20kyrs_cycle_20cm_500.txt', 20,50)
% turbo2script_multiple('data/orbital_cycles/turbo2input_40kyrs_cycle_20cm_500.txt', 20,50)
% turbo2script_multiple('data/orbital_cycles/turbo2input_100kyrs_cycle_20cm_500.txt', 20,50)
% 
% turbo2script_multiple('data/orbital_cycles/turbo2input_all_cycles_combined_2cm_500.txt', 20,50)
% turbo2script_multiple('data/orbital_cycles/turbo2input_all_cycles_combined_5cm_500.txt', 20,50)
% turbo2script_multiple('data/orbital_cycles/turbo2input_all_cycles_combined_10cm_500.txt', 20,50)
% turbo2script_multiple('data/orbital_cycles/turbo2input_all_cycles_combined_20cm_500.txt', 20,50)
% 
% turbo2script_multiple('data/orbital_cycles/turbo2input_all_cycles_combined_point_events_5cm_500.txt', 20,50)
% turbo2script_multiple('data/orbital_cycles/turbo2input_all_cycles_combined_point_events_10cm_500.txt', 20,50)
% turbo2script_multiple('data/orbital_cycles/turbo2input_all_cycles_combined_point_events_20cm_500.txt', 20,50)

% all cycles combined plus step events
% % turbo2script_multiple('data/orbital_cycles/turbo2input_all_cycles_combined_step_events_5cm_500.txt', 20,50)
% % turbo2script_multiple('data/orbital_cycles/turbo2input_all_cycles_combined_step_events_10cm_500.txt', 20,50)
% % turbo2script_multiple('data/orbital_cycles/turbo2input_all_cycles_combined_step_events_20cm_500.txt', 20,50)
% bigger steps:
% turbo2script_multiple('data/orbital_cycles/turbo2input_all_cycles_combined_step_events_5cm_500_bigger.txt', 20,50)
% turbo2script_multiple('data/orbital_cycles/turbo2input_all_cycles_combined_step_events_10cm_500_bigger.txt', 20,50)
% turbo2script_multiple('data/orbital_cycles/turbo2input_all_cycles_combined_step_events_20cm_500_bigger.txt', 20,50)



%% Orbital cycles starting with 450 for species 1
turbo2script_multiple('data/orbital_cycles_start450/turbo2input_20kyrs_cycle_10cm_start450.txt', 20,10)
% turbo2script_multiple('data/orbital_cycles_start450/turbo2input_40kyrs_cycle_10cm_start450.txt', 20,50)
% turbo2script_multiple('data/orbital_cycles_start450/turbo2input_100kyrs_cycle_10cm_start450.txt', 20,50)

turbo2script_multiple('data/orbital_cycles_start450/turbo2input_20kyrs_cycle_20cm_start450.txt', 20,10)
% turbo2script_multiple('data/orbital_cycles_start450/turbo2input_40kyrs_cycle_20cm_start450.txt', 20,50)
% turbo2script_multiple('data/orbital_cycles_start450/turbo2input_100kyrs_cycle_20cm_start450.txt', 20,50)
