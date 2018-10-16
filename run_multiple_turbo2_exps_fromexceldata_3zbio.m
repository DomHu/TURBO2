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
data=xlsread(datafile,'zbio=5','C4:F203');
turbo2script_multiple_fromexceldata_3zbio(data, 10000, 100, 'pointevent1')

data=xlsread(datafile,'zbio=5','H4:K203');
turbo2script_multiple_fromexceldata_3zbio(data, 10000, 100, 'pointevent_multiple')

data=xlsread(datafile,'zbio=5','M4:P203');
turbo2script_multiple_fromexceldata_3zbio(data, 10000, 100, 'step_sequence_up')

data=xlsread(datafile,'zbio=5','R4:U203');
turbo2script_multiple_fromexceldata_3zbio(data, 10000, 100, 'step_sequence_down')

data=xlsread(datafile,'zbio=5','Y4:AB203');
turbo2script_multiple_fromexceldata_3zbio(data, 10000, 100, 'gradual_change_up')

data=xlsread(datafile,'zbio=5','AD4:AG203');
turbo2script_multiple_fromexceldata_3zbio(data, 10000, 100, 'gradual_change_down')

data=xlsread(datafile,'zbio=5','AI4:AL203');
turbo2script_multiple_fromexceldata_3zbio(data, 10000, 100, 'cycle_20kyrs')

data=xlsread(datafile,'zbio=5','AN4:AQ203');
turbo2script_multiple_fromexceldata_3zbio(data, 10000, 100, 'cycle_40kyrs')

data=xlsread(datafile,'zbio=5','AS4:AV203');
turbo2script_multiple_fromexceldata_3zbio(data, 10000, 100, 'cycle_100kyrs')
