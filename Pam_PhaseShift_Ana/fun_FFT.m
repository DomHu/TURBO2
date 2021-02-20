function [PS,f,peakdata] = fun_FFT(data,P,gen_plot,SPEC)

% FAST FOURIER TRANSFORM DATA ANALYSIS
% =========================== Pam Vervoort ===============================
%                           January 17, 2019

%               !!! EVEN SAMPLING PERIOD REQUIRED !!!
%
%       INPUT
%               data = two-column dataset 
%                      column 1 = time series
%                      column 2 = data 
%               P = sampling period (time)
%               gen_plot = generature plot? ['Y'/'N']
%               SPEC = generate amplitude or PSD plot ['AMP'/'PSD']

%       OUTPUT
%               PS = PSD spectrum
%               peakdata = dominant peaks
%
% ************************************************************************

% ================ Peak settings ===============
n_peaks = 3;        % identify # number of peaks

% ================ Zero-padding ================
% if AMP, pad w/ zeros to optimize amplitude estimation
if strcmp(SPEC,'AMP') 
    n = 2*2^nextpow2(length(data));
elseif strcmp(SPEC,'PSD') 
    n = length(data);
else
    disp('ERROR: Choose amplitude (AMP) or power spectrum density (PSD) plot')
    % stop this fuctions, return to prvious function
    return;     
end

% =========== separate time series  ============
time = data(:,1);
data = data(:,2);

% ================ Detrend data ================
data = detrend(data);

% ================ Apply window ================
%data = data.*hann(length(data));

% ============ Automatic deductions ===========
Fs = 1/P;                       % deduce sampling frequency (sample per time)
N = length(data);               % deduce number of samples
f = 0:Fs/n:Fs/2;                % define frequency domain
% find mimimum frequency to find peaks for (limit: 7-500 kyr)
f(2,:) = 1./f(1,:);                 % calculate periods of freq domain
f(3,:) = abs(f(2,:)-500000);        % calculate periods of freq domain
[~,LOC] = min(f(3,:));              % find location in freq matrix
f(2:3,:) = [];
% display maximum period searched for
disp(['Maximum period for peak search is ' num2str(1/f(LOC)/1E3) ' kyr']);

% =========== Fourier caluclations ============
if strcmp(SPEC,'AMP') 
    Y = fft(data,n);                % convert data to frequency domain
    Y1 = Y(1:(n/2+1));              % convert fft to single-sided DFT spectrum
    Y1 = abs(Y1/N).*2;              % calculate amplitude
    PS = Y1;                        % Generate true amplitude spectrum
elseif strcmp(SPEC,'PSD')
    Y = fft(data);                  % convert data to frequency domain
    Y1 = Y(1:(n/2+1));              % convert fft to single-sided DFT spectrum
    Y1 = (1/(Fs*N))*abs(Y1).^2;     % calculate PDS
    PS = Y1./max(Y1(LOC:end));      % Normalize PSD
end

% ================ Find peaks =================

% find peaks
peaks = findpeaks(PS(LOC:end-1));         % search for peaks
peakdata = zeros(n_peaks,2);                % preallocate matrix
for i = 1:n_peaks
    if i == 1
        peak = max(peaks(:));               % find peak value
        loc = f(find(PS == peak));          % frequency peak
        peakdata(i,:) = [loc peak];         % save peak data
    else
        peak = max(peaks(peaks < peakdata(i-1,2)));
        loc = f(find(PS == peak));          % frequency peak
        peakdata(i,:) = [loc peak];         % save peak data
    end
end

% ================ Plotting ====================

if strcmp(gen_plot,'Y')
    
    fig1 = figure(2); 
    set(fig1,'Position',[200 500 1300 200])
    
    subplot(1,5,[1 4])
    plot(time,data);
    xlabel('Time'); ylabel('data')

    subplot(1,5,5)
    plot(f(2:end-1),PS(2:end-1),peakdata(:,1),peakdata(:,2),'or');   
    xlim([5E-7 1.5E-4])
    set(gca,'xticklabel',[])
    set(gca, 'XScale', 'log')
    xlabel('frequency (kyr^{-1})'); 
    if strcmp(SPEC,'AMP')
        ylabel('amplitude');
    else 
        ylim([0 1.1]);
        ylabel('PSD');
    end
    
    for i = 1:n_peaks
    text((peakdata(i,1)),peakdata(i,2)+0.002,num2str(round((1/peakdata(i,1))/1000,1)));
    end
    
end

end
