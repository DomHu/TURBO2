function run_multiple_turbo2_exps_fromexceldata(datafile)
%% MATLAB script to run multiple experiments of TURBO2 using data in an excel file
% specify below where the data one wants to use can be found in excel file

% datafile = INPUT FILE WITH REQUIRED DATA

%   Example
%           run_multiple_turbo2_exps_fromexceldata('data/1_turbo2input_no_abu_change.xlsx')
%           this calls the function
%           turbo2script_multiple_fromexceldata(data, nocarriers, noexps, expname)
Exps = 100;
sample = 20;


% %% No ABU change - use: 2_turbo2input_no_abu_change_10k_1510.xlsx
% data=xlsread(datafile,'zbio=5','C4:F203');
% turbo2script_multiple_fromexceldata(data, sample, Exps, 'pointevent1_NOabu-change')
% 
% 
% data=xlsread(datafile,'zbio=5','H4:K203');
% turbo2script_multiple_fromexceldata(data, sample, Exps, 'pointevent_multiple_NOabu-change')
% 
%     
% data=xlsread(datafile,'zbio=5','M4:P203');
% turbo2script_multiple_fromexceldata(data, sample, Exps, 'step-sequence-up_NOabu-change')

% data=xlsread(datafile,'zbio=5','R4:U203');
% turbo2script_multiple_fromexceldata(data, sample, Exps, 'step-sequence-down_NOabu-change')

% data=xlsread(datafile,'zbio=5','Y4:AB203');
% turbo2script_multiple_fromexceldata(data, sample, Exps, 'gradual-change-up_NOabu-change')
% 
% data=xlsread(datafile,'zbio=5','AD4:AG203');
% turbo2script_multiple_fromexceldata(data, sample, Exps, 'gradual-change-down_NOabu-change')
% 
% data=xlsread(datafile,'zbio=5','AN4:AQ203');
% turbo2script_multiple_fromexceldata(data, sample, Exps, '40kyrs_NOabu-change')
% 
data=xlsread(datafile,'zbio=5','AX4:BA203');
turbo2script_multiple_fromexceldata(data, sample, Exps, 'multiple-step_up_NOabu-change')


% %% In-phase
% data=xlsread(datafile,'inphase','C4:F203');
% turbo2script_multiple_fromexceldata(data, sample, Exps, 'pointevent1_abu-change')

% 
% data=xlsread(datafile,'inphase','H4:K203');
% turbo2script_multiple_fromexceldata(data, sample, Exps, 'pointevent_multiple_abu-change')
% 
%     
% data=xlsread(datafile,'inphase','M4:P203');
% turbo2script_multiple_fromexceldata(data, sample, Exps, 'step-sequence-up_abu-change')
% 
% data=xlsread(datafile,'inphase','R4:U203');
% turbo2script_multiple_fromexceldata(data, sample, Exps, 'step-sequence-down_abu-change')
% 
% data=xlsread(datafile,'inphase','Y4:AB203');
% turbo2script_multiple_fromexceldata(data, sample, Exps, 'gradual-change-up_abu-change')

% data=xlsread(datafile,'inphase','AD4:AG203');
% turbo2script_multiple_fromexceldata(data, sample, Exps, 'gradual-change-down_abu-change')

% data=xlsread(datafile,'inphase','AI4:AL203');
% turbo2script_multiple_fromexceldata(data, sample, Exps, '40kyrs_abu-change')

% data=xlsread(datafile,'inphase','AX4:BA203');
% turbo2script_multiple_fromexceldata(data, sample, Exps, 'multiple-step_up_abu-change')


%% Offset 10cm
% 
% data=xlsread(datafile,'offset','C4:F203');
% turbo2script_multiple_fromexceldata(data, 20, Exps, 'pointevent1_offset')
% 
% data=xlsread(datafile,'offset','H4:K203');
% turbo2script_multiple_fromexceldata(data, sample, Exps, 'pointevent_multiple_offset')
%     
% data=xlsread(datafile,'offset','M4:P203');
% turbo2script_multiple_fromexceldata(data, 20, Exps, 'step-sequence-up_offset20cm')
% 
% data=xlsread(datafile,'offset','R4:U203');
% turbo2script_multiple_fromexceldata(data, 20, Exps, 'step-sequence-down_offset')
% 
% data=xlsread(datafile,'offset','Y4:AB203');
% turbo2script_multiple_fromexceldata(data, 20, Exps, 'gradual-change-up_offset')

% data=xlsread(datafile,'offset','AD4:AG203');
% turbo2script_multiple_fromexceldata(data, 20, Exps, 'gradual-change-down_offset')

% data=xlsread(datafile,'offset','AI4:AL203');
% turbo2script_multiple_fromexceldata(data, sample, Exps, '40kyrs_abu-change_offset20')
% 
% data=xlsread(datafile,'offset','BE4:BH203');
% turbo2script_multiple_fromexceldata(data, 20, Exps, 'multiple-step-up_offsetca4cmcm')

%% Offset 2cm
% % 
% data=xlsread(datafile,'offset_2cm','C4:F203');
% turbo2script_multiple_fromexceldata(data, sample, Exps, 'pointevent1_offset_2cm')
% 
% data=xlsread(datafile,'offset_2cm','H4:K203');
% turbo2script_multiple_fromexceldata(data, sample, Exps, 'pointevent_multiple_offset_2cm')
%     
% data=xlsread(datafile,'offset_2cm','M4:P203');
% turbo2script_multiple_fromexceldata(data, sample, Exps, 'step-sequence-up_offset_2cm')
% 
% data=xlsread(datafile,'offset_2cm','R4:U203');
% turbo2script_multiple_fromexceldata(data, sample, Exps, 'step-sequence-down_offset_2cm')
% 
% data=xlsread(datafile,'offset_2cm','Y4:AB203');
% turbo2script_multiple_fromexceldata(data, sample, Exps, 'gradual-change-up_offset_2cm')
% 
% data=xlsread(datafile,'offset_2cm','AD4:AG203');
% turbo2script_multiple_fromexceldata(data, sample, Exps, 'gradual-change-down_offset_2cm')
% 
% data=xlsread(datafile,'offset_2cm','AI4:AL203');
% turbo2script_multiple_fromexceldata(data, sample, Exps, '40kyrs_abu-change_offset_2cm')
% 
% data=xlsread(datafile,'offset_2cm','AX4:BA203');
% turbo2script_multiple_fromexceldata(data, sample, Exps, 'multiple-step-up_offset_2cm')
% 

%% Offset 5cm
% 
% data=xlsread(datafile,'offset_5cm','C4:F203');
% turbo2script_multiple_fromexceldata(data, sample, Exps, 'pointevent1_offset_5cm')
% 
% data=xlsread(datafile,'offset_5cm','H4:K203');
% turbo2script_multiple_fromexceldata(data, sample, Exps, 'pointevent_multiple_offset_5cm')
%     
% data=xlsread(datafile,'offset_5cm','M4:P203');
% turbo2script_multiple_fromexceldata(data, sample, Exps, 'step-sequence-up_offset_5cm')
% 
% data=xlsread(datafile,'offset_5cm','R4:U203');
% turbo2script_multiple_fromexceldata(data, sample, Exps, 'step-sequence-down_offset_5cm')
% 
% data=xlsread(datafile,'offset_5cm','Y4:AB203');
% turbo2script_multiple_fromexceldata(data, sample, Exps, 'gradual-change-up_offset_5cm')
% 
% data=xlsread(datafile,'offset_5cm','AD4:AG203');
% turbo2script_multiple_fromexceldata(data, sample, Exps, 'gradual-change-down_offset_5cm')
% 
% data=xlsread(datafile,'offset_5cm','AI4:AL203');
% turbo2script_multiple_fromexceldata(data, sample, Exps, '40kyrs_abu-change_offset_5cm')
% 
% data=xlsread(datafile,'offset_5cm','AX4:BA203');
% turbo2script_multiple_fromexceldata(data, sample, Exps, 'multiple-step-up_offset_5cm')


%% anti-phase

% data=xlsread(datafile,'outphase','C4:F203');
% turbo2script_multiple_fromexceldata_3zbio(data, 20, Exps, 'pointevent1_antiphase')
% 
% 
% data=xlsread(datafile,'outphase','H4:K203');
% turbo2script_multiple_fromexceldata(data, 20, Exps, 'pointevent_multiple_antiphase')
% 
%     
% data=xlsread(datafile,'outphase','M4:P203');
% turbo2script_multiple_fromexceldata(data, 20, Exps, 'step-sequence-up_antiphase')
% 
% data=xlsread(datafile,'outphase','R4:U203');
% turbo2script_multiple_fromexceldata(data, 20, Exps, 'step-sequence-down_antiphase')
% 
% data=xlsread(datafile,'outphase','Y4:AB203');
% turbo2script_multiple_fromexceldata(data, 20, Exps, 'gradual-change-up_antiphase')
% 
% 
% data=xlsread(datafile,'outphase','AD4:AG203');
% turbo2script_multiple_fromexceldata(data, 20, Exps, 'gradual-change-down_antiphase')



% 
% data=xlsread(datafile,'zbio=5','R4:U203');
% data_zbio10=data;
% data_zbio10(:,2)=10;
% % turbo2script_multiple_fromexceldata(data, 20, 50, 'step-sequence')
% turbo2script_multiple_fromexceldata(data_zbio10, 20, 50, 'step-sequence')
% turbo2script_multiple_fromexceldata(data_zbio10, 5, 50, 'step-sequence')
% 
% 
% data=xlsread(datafile,'zbio=5','W4:Z143');
% data_zbio10=data;
% data_zbio10(:,2)=10;
% turbo2script_multiple_fromexceldata(data, 20, 50, 'gradual-changes')
% turbo2script_multiple_fromexceldata(data_zbio10, 20, 50, 'gradual-changes')
% turbo2script_multiple_fromexceldata(data_zbio10, 5, 50, 'gradual-changes')
% 
% data=xlsread(datafile,'zbio=5','AB4:AE204');
% data_zbio10=data;
% data_zbio10(:,2)=10;
% turbo2script_multiple_fromexceldata(data, 20, 50, '20kyrs')
% turbo2script_multiple_fromexceldata(data_zbio10, 20, 50, '20kyrs')
% turbo2script_multiple_fromexceldata(data_zbio10, 5, 50, '20kyrs')
% 
% data=xlsread(datafile,'zbio=5','AG4:AJ204');
% data_zbio10=data;
% data_zbio10(:,2)=10;
% turbo2script_multiple_fromexceldata(data, 20, 50, '40kyrs')
% turbo2script_multiple_fromexceldata(data_zbio10, 20, 50, '40kyrs')
% turbo2script_multiple_fromexceldata(data_zbio10, 5, 50, '40kyrs')
% 
% data=xlsread(datafile,'zbio=5','AL4:AO204');
% data_zbio10=data;
% data_zbio10(:,2)=10;
% turbo2script_multiple_fromexceldata(data, 20, 50, '100kyrs')
% turbo2script_multiple_fromexceldata(data_zbio10, 20, 50, '100kyrs')
% turbo2script_multiple_fromexceldata(data_zbio10, 5, 50, '100kyrs')

% data=xlsread(datafile,'zbio=5','AQ4:AT204');
% data_zbio10=data;
% data_zbio10(:,2)=10;
% data_zbio20=data;
% data_zbio20(:,2)=20;
% turbo2script_multiple_fromexceldata(data, 20, 50, '3_orbital_cycles')
% turbo2script_multiple_fromexceldata(data_zbio10, 20, 50, '3_orbital_cycles')
% turbo2script_multiple_fromexceldata(data_zbio10, 5, 50, '3_orbital_cycles')
% turbo2script_multiple_fromexceldata(data_zbio20, 20, 50, '3_orbital_cycles')
% turbo2script_multiple_fromexceldata(data_zbio20, 5, 50, '3_orbital_cycles')
% 
% data=xlsread(datafile,'zbio=5','AV4:AY204');
% data_zbio10=data;
% data_zbio10(:,2)=10;
% data_zbio20=data;
% data_zbio20(:,2)=20;
% turbo2script_multiple_fromexceldata(data, 20, 50, '3_orbital_cycles+pointevent')
% turbo2script_multiple_fromexceldata(data_zbio10, 20, 50, '3_orbital_cycles+pointevent')
% turbo2script_multiple_fromexceldata(data_zbio10, 5, 50, '3_orbital_cycles+pointevent')
% turbo2script_multiple_fromexceldata(data_zbio20, 20, 50, '3_orbital_cycles+pointevent')
% turbo2script_multiple_fromexceldata(data_zbio20, 5, 50, '3_orbital_cycles+pointevent')

% data=xlsread(datafile,'zbio=5','BA4:BD204');
% data_zbio10=data;
% data_zbio10(:,2)=10;
% data_zbio20=data;
% data_zbio20(:,2)=20;
% turbo2script_multiple_fromexceldata(data, 20, 50, '3_orbital_cycles+gradualchanges')
% turbo2script_multiple_fromexceldata(data_zbio10, 20, 50, '3_orbital_cycles+gradualchanges')
% turbo2script_multiple_fromexceldata(data_zbio10, 5, 50, '3_orbital_cycles+gradualchanges')
% turbo2script_multiple_fromexceldata(data_zbio20, 20, 50, '3_orbital_cycles+gradualchanges')
% turbo2script_multiple_fromexceldata(data_zbio20, 5, 50, '3_orbital_cycles+gradualchanges')
% 
