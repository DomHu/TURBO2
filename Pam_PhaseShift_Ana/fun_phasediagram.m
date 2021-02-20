function [f,phase,lags] = fun_phasediagram(data1,data2,P,nfft,peakdata,doshift)

% calculate frequency 
Fs = 1/P;

% preallocate lags data saving
lags = zeros(length(peakdata),2);

% calculate crosspectrum
[Pxy,f] = cpsd(data1,data2,[],0,nfft,Fs);

% calculate phase angle
phase = angle(Pxy);

% since bioturbation delays ALL signals, converts leads to lags
% phase(phase > 0) = -(2*pi - phase(phase > 0));
% Dom: since homog. bioturbation shifts ALL signals further down, converts lags to leads
 if(doshift)
     phase(phase < 0) = (2*pi + phase(phase < 0));
 end
% calculate phase at peak frequencies
for n = 1:length(peakdata)
    % find phase at peak
    lag = interp1(f,phase,peakdata(n,1));
    % convert phase to lag in kyr
    lag = lag*(1/peakdata(n,1)) / (2*pi);
    % save data
    lags(n,:) = [peakdata(n,1) lag];
end


end

