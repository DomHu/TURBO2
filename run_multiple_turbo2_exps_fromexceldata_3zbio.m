function run_multiple_turbo2_exps_fromexceldata_3zbio(datafile)
%% MATLAB script to run multiple experiments of TURBO2 using data in an excel file
% here 3 different bioturbation depths are compared (i.e. mxl (as specified in datafile, 2*mxl, 4*mxl))
% specify below where the data one wants to use can be found in excel file

% datafile = INPUT FILE WITH REQUIRED DATA

%   Example
%           run_multiple_turbo2_exps_fromexceldata('data/1_turbo2input_no_abu_change.xlsx')
%           this calls the function
%           turbo2script_multiple_fromexceldata(data, nocarriers, noexps, expname)
% 
carriers = 10000;
Exps = 4;
%% ASH experiment run with input from 0_turbo2input_10k_Ash_010219.xlsx
% data=xlsread(datafile,'zbio=5','C4:F63');
% turbo2script_multiple_fromexceldata_3zbio_ASH(data, carriers, Exps, 'ASH_experiment')

% % Laskar 4.1 Mio signal - 19.02.2021
data=xlsread(datafile,'Laskar_Feb2021','Y4:AB4103');
turbo2script_multiple_fromexceldata_3zbio(data, carriers, Exps, 'La2004_1E1T1P_4100_flipOri')

% % Artificial signal with 20, 40 and 100 kyr periode - 12.02.2021 - 1.1 Mio years
% data=xlsread(datafile,'Artificial_signal_12022021','C4:F1103');
% turbo2script_multiple_fromexceldata_3zbio(data, carriers, Exps, 'ArtificialSignal_1202_1100')

% % Laskar signal - 11.02.2021 - 1.1 Mio years
% data=xlsread(datafile,'Laskar_Feb2021','R4:U1103');
% turbo2script_multiple_fromexceldata_3zbio(data, carriers, Exps, 'La2004_1E1T1P_1100')

% % Laskar signal - 11.02.2021 - 1 Mio years
% data=xlsread(datafile,'Laskar_Feb2021','C4:F1003');
% turbo2script_multiple_fromexceldata_3zbio(data, carriers, Exps, 'La2004_1E1T1P')


% data=xlsread(datafile,'zbio=5','C4:F263');
% turbo2script_multiple_fromexceldata_3zbio(data, carriers, Exps, 'point_event')

% data=xlsread(datafile,'zbio=5','H4:K263');
% turbo2script_multiple_fromexceldata_3zbio(data, carriers, Exps, 'step_sequence')
% 
% data=xlsread(datafile,'zbio=5','M4:P263');
% turbo2script_multiple_fromexceldata_3zbio(data, 1*carriers, Exps, 'gradual_change')
% 
% data=xlsread(datafile,'zbio=5','R4:U263');
% turbo2script_multiple_fromexceldata_3zbio(data, 1*carriers, Exps, 'stepwise_down')
% 
% data=xlsread(datafile,'zbio=5','W4:Z263');
% turbo2script_multiple_fromexceldata_3zbio(data, 1*carriers, Exps, '40kyrs')
% 
% data=xlsread(datafile,'zbio=5','AC4:AF263');
% turbo2script_multiple_fromexceldata_3zbio(data, carriers, Exps, 'multiple_points_2602')
% NEW mulstiple point events
% data=xlsread(datafile,'zbio=5','AT4:AW263');
% turbo2script_multiple_fromexceldata_3zbio(data, carriers, Exps, 'multiple_points_2602')
% 


%% 
% data=xlsread(datafile,'zbio=5','AI4:AL203');
% turbo2script_multiple_fromexceldata_3zbio(data, 1*carriers, Exps, 'cycle_20kyrs')
% 
% % data=xlsread(datafile,'zbio=5','AN4:AQ203');
% % turbo2script_multiple_fromexceldata_3zbio(data, 100, 100, 'cycle_40kyrs')
% % 
% % data=xlsread(datafile,'zbio=5','AS4:AV203');
% % turbo2script_multiple_fromexceldata_3zbio(data, 100, 100, 'cycle_100kyrs')
% % 
% 
% 
% data=xlsread(datafile,'zbio=5','AX4:BA203');
% turbo2script_multiple_fromexceldata_3zbio(data, 1*carriers, Exps, 'stepwise_up')


% % data=xlsread(datafile,'zbio=5','C4:F203');
% % turbo2script_multiple_fromexceldata_3zbio(data, 10, 100, 'pointevent1')
% % 
% % data=xlsread(datafile,'zbio=5','H4:K203');
% % turbo2script_multiple_fromexceldata_3zbio(data, 10, 100, 'pointevent_multiple')
% 
% data=xlsread(datafile,'zbio=5','M4:P203');
% turbo2script_multiple_fromexceldata_3zbio(data, 0.7*carriers, Exps, 'step_sequence_up')
% 
% % data=xlsread(datafile,'zbio=5','R4:U203');
% % turbo2script_multiple_fromexceldata_3zbio(data, 10, 100, 'step_sequence_down')
% % 
% % data=xlsread(datafile,'zbio=5','Y4:AB203');
% % turbo2script_multiple_fromexceldata_3zbio(data, 10, 100, 'gradual_change_up')
% % 
% % data=xlsread(datafile,'zbio=5','AD4:AG203');
% % turbo2script_multiple_fromexceldata_3zbio(data, 10, 100, 'gradual_change_down')
% 
% data=xlsread(datafile,'zbio=5','AI4:AL203');
% turbo2script_multiple_fromexceldata_3zbio(data, 0.7*carriers, Exps, 'cycle_20kyrs')
% 
% % data=xlsread(datafile,'zbio=5','AN4:AQ203');
% % turbo2script_multiple_fromexceldata_3zbio(data, 10, 100, 'cycle_40kyrs')
% % 
% % data=xlsread(datafile,'zbio=5','AS4:AV203');
% % turbo2script_multiple_fromexceldata_3zbio(data, 10, 100, 'cycle_100kyrs')
% 
% 
% % 
% % data=xlsread(datafile,'zbio=5','C4:F203');
% % turbo2script_multiple_fromexceldata_3zbio(data, 40, 100, 'pointevent1')
% % 
% % data=xlsread(datafile,'zbio=5','H4:K203');
% % turbo2script_multiple_fromexceldata_3zbio(data, 40, 100, 'pointevent_multiple')
% 
% data=xlsread(datafile,'zbio=5','M4:P203');
% turbo2script_multiple_fromexceldata_3zbio(data, 0.4*carriers, Exps, 'step_sequence_up')
% 
% % data=xlsread(datafile,'zbio=5','R4:U203');
% % turbo2script_multiple_fromexceldata_3zbio(data, 40, 100, 'step_sequence_down')
% % 
% % data=xlsread(datafile,'zbio=5','Y4:AB203');
% % turbo2script_multiple_fromexceldata_3zbio(data, 40, 100, 'gradual_change_up')
% % 
% % data=xlsread(datafile,'zbio=5','AD4:AG203');
% % turbo2script_multiple_fromexceldata_3zbio(data, 40, 100, 'gradual_change_down')
% % 
% data=xlsread(datafile,'zbio=5','AI4:AL203');
% turbo2script_multiple_fromexceldata_3zbio(data, 0.4*carriers, Exps, 'cycle_20kyrs')
% 
% % data=xlsread(datafile,'zbio=5','AN4:AQ203');
% % turbo2script_multiple_fromexceldata_3zbio(data, 40, 100, 'cycle_40kyrs')
% % 
% % data=xlsread(datafile,'zbio=5','AS4:AV203');
% % turbo2script_multiple_fromexceldata_3zbio(data, 40, 100, 'cycle_100kyrs')
% % 
% 
% 
% % 
% % data=xlsread(datafile,'zbio=5','C4:F203');
% % turbo2script_multiple_fromexceldata_3zbio(data, 70, 100, 'pointevent1')
% % 
% % data=xlsread(datafile,'zbio=5','H4:K203');
% % turbo2script_multiple_fromexceldata_3zbio(data, 70, 100, 'pointevent_multiple')
% 
% data=xlsread(datafile,'zbio=5','M4:P203');
% turbo2script_multiple_fromexceldata_3zbio(data, 0.1*carriers, Exps, 'step_sequence_up')
% 
% % data=xlsread(datafile,'zbio=5','R4:U203');
% % turbo2script_multiple_fromexceldata_3zbio(data, 70, 100, 'step_sequence_down')
% % 
% % data=xlsread(datafile,'zbio=5','Y4:AB203');
% % turbo2script_multiple_fromexceldata_3zbio(data, 70, 100, 'gradual_change_up')
% % 
% % data=xlsread(datafile,'zbio=5','AD4:AG203');
% % turbo2script_multiple_fromexceldata_3zbio(data, 70, 100, 'gradual_change_down')
% 
% data=xlsread(datafile,'zbio=5','AI4:AL203');
% turbo2script_multiple_fromexceldata_3zbio(data, 0.1*carriers, Exps, 'cycle_20kyrs')
% 
% % data=xlsread(datafile,'zbio=5','AN4:AQ203');
% % turbo2script_multiple_fromexceldata_3zbio(data, 70, 100, 'cycle_40kyrs')
% % 
% % data=xlsread(datafile,'zbio=5','AS4:AV203');
% % turbo2script_multiple_fromexceldata_3zbio(data, 70, 100, 'cycle_100kyrs')


