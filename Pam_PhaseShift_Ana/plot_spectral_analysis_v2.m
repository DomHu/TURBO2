% DH: keep plotting main peaks 
% add path to search
addpath('wavelet-coherence-master');

normalize_global_flag = false;
% set sampling frequecy
Fs = 1/1000;
n_peaks = 3;        % identify # number of peaks

% % load data
% % % Artificial 1.1 Myr signal - with flipped original signal  --> cut to 1 Mio year so edge effects are not visible
% origi = load('Artificial_signal_2040100kyrs_1100_transformed_flip.txt');
% hom05 = load('Artificial_signal_2040100kyrs_1100_transformed_zbio5.txt');
% hom10 = load('Artificial_signal_2040100kyrs_1100_transformed_zbio10.txt');
% hom20 = load('Artificial_signal_2040100kyrs_1100_transformed_zbio20.txt');

% % % Artificial 1.1 Myr signal - with flipped bioturbated signals  --> cut to 1 Mio year so edge effects are not visible
% origi = load('Artificial_signal_2040100kyrs_1100_transformed.txt');
% hom05 = load('Artificial_signal_2040100kyrs_1100_transformed_flip_zbio5.txt');
% hom10 = load('Artificial_signal_2040100kyrs_1100_transformed_flip_zbio10.txt');
% hom20 = load('Artificial_signal_2040100kyrs_1100_transformed_flip_zbio20.txt');

% Laskar 4.1 Myr signal - with flipped original signal  --> cut to 4 Mio year so edge effects are not visible
origi = load('La2004-1E1T1P_4100_transformed.txt');
hom05 = load('La2004_1E1T1P_4100_transformed_zbio5.txt');
hom10 = load('La2004_1E1T1P_4100_transformed_zbio10.txt');
hom20 = load('La2004_1E1T1P_4100_transformed_zbio20.txt');

% % Laskar 1.1 Myr signal - with flipped bioturbated signals  --> cut to 1 Mio year so edge effects are not visible
% origi = load('La2004_1E1T1P_1100_transformed.txt');
% hom05 = load('La2004_1E1T1P_1100_transformed_flip_zbio5.txt');
% hom10 = load('La2004_1E1T1P_1100_transformed_flip_zbio10.txt');
% hom20 = load('La2004_1E1T1P_1100_transformed_flip_zbio20.txt');

% 
% % 1.1 Myr signal  --> cut to 1 Mio year so edge effects are not visible
% origi = load('Artificial_signal_2040100kyrs_1100_transformed.txt');
% hom05 = load('Artificial_signal_2040100kyrs_1100_transformed_zbio5.txt');
% hom10 = load('Artificial_signal_2040100kyrs_1100_transformed_zbio10.txt');
% hom20 = load('Artificial_signal_2040100kyrs_1100_transformed_zbio20.txt');

% % 1.1 Myr signal  --> cut to 1 Mio year so edge effects are not visible
% origi = load('La2004_1E1T1P_1100_transformed.txt');
% hom05 = load('La2004_1E1T1P_1100_transformed_zbio5.txt');
% hom10 = load('La2004_1E1T1P_1100_transformed_zbio10.txt');
% hom20 = load('La2004_1E1T1P_1100_transformed_zbio20.txt');

% % 1 Myr signal
% origi = load('La2004-1E1T-1P-1-1000_transformed.txt');
% hom05 = load('La2004_1E1T1P_transformed_zbio5.txt');
% hom10 = load('La2004_1E1T1P_transformed_zbio10.txt');
% hom20 = load('La2004_1E1T1P_transformed_zbio20.txt');
% 
% cut first 100kyrs
origi = origi(101:end, :);
origi(:,1)=[1:size(origi,1)]';
hom05 = hom05(101:end, :);
hom05(:,1)=[1:size(hom05,1)]';
hom10 = hom10(101:end, :);
hom10(:,1)=[1:size(hom10,1)]';
hom20 = hom20(101:end, :);
hom20(:,1)=[1:size(hom20,1)]';

% 
% % cut last 100kyrs
% origi = origi(1:end-100, :);
% hom05 = hom05(1:end-100, :);
% hom10 = hom10(1:end-100, :);
% hom20 = hom20(1:end-100, :);

% plotterdeplotterdeplot
set(0,'DefaultAxesFontSize',16)
set(gca,'DefaultLineLineWidth',3)
figure(1)

subplot(3,4,[1 2 3 4])
    plot(origi(:,1),origi(:,2),'k-',hom05(:,1),hom05(:,2),'r-',...
         hom10(:,1),hom10(:,2),'g-',hom20(:,1),hom20(:,2),'b-'), grid;
     xlabel('Core depth (cm) or Time (kyrs)');
    ylabel('\delta^{18}O');

subplot(3,4,5) 
    [PS,f,peakdata_ori] = fun_FFT(origi,1/Fs,'N','PSD');
    Max_ori_PSD = max(peakdata_ori(:,2));
    if(normalize_global_flag)
        normalize_global = Max_ori_PSD;
    else
        normalize_global = 1;
    end
    plot(f(2:end-1)*1e3,PS(2:end-1)/normalize_global,peakdata_ori(:,1)*1e3,peakdata_ori(:,2)/normalize_global,'or');   
    xlim([0 0.07]); ylim([0 1.1])
    ylabel('Normalized Power');
    title('Original Signal')
    for i = 1:n_peaks
    text((peakdata_ori(i,1))*1e3,peakdata_ori(i,2)/normalize_global+0.002,num2str(round((1/peakdata_ori(i,1))/1000,1)));
    end
subplot(3,4,6) 
    [PS,f,peakdata] = fun_FFT(hom05,1/Fs,'N','PSD');
    plot(f(2:end-1)*1e3,PS(2:end-1)/normalize_global,peakdata(:,1)*1e3,peakdata(:,2)/normalize_global,'or');
%    plot(peakdata_ori(:,1),peakdata_ori(:,2),'or');   
    xlim([0 0.07]); ylim([0 1.1])
    title('z_{bio} = 5cm')
    for i = 1:n_peaks
%    text((peakdata_ori(i,1)),peakdata_ori(i,2)+0.002,num2str(round((1/peakdata_ori(i,1))/1000,1)));
    text((peakdata(i,1))*1e3,peakdata(i,2)/normalize_global+0.002,num2str(round((1/peakdata(i,1))/1000,1)));
    end    
 subplot(3,4,7)
    [PS,f,peakdata] = fun_FFT(hom10,1/Fs,'N','PSD');
    plot(f(2:end-1)*1e3,PS(2:end-1)/normalize_global,peakdata(:,1)*1e3,peakdata(:,2)/normalize_global,'or');   
%    plot(peakdata_ori(:,1),peakdata_ori(:,2),'or');   
    xlim([0 0.07]); ylim([0 1.1])
    title('z_{bio} = 10cm')
  	for i = 1:n_peaks
%    text((peakdata_ori(i,1)),peakdata_ori(i,2)+0.002,num2str(round((1/peakdata_ori(i,1))/1000,1)));
    text((peakdata(i,1))*1e3,peakdata(i,2)/normalize_global+0.002,num2str(round((1/peakdata(i,1))/1000,1)));
    end
subplot(3,4,8) 
    [PS,f,peakdata] = fun_FFT(hom20,1/Fs,'N','PSD');
    plot(f(2:end-1)*1e3,PS(2:end-1)/normalize_global,peakdata(:,1)*1e3,peakdata(:,2)/normalize_global,'or');   
%    plot(peakdata_ori(:,1),peakdata_ori(:,2),'or');   
    xlim([0 0.07]); ylim([0 1.1])
    title('z_{bio} = 20cm')
    for i = 1:n_peaks
%    text((peakdata_ori(i,1)),peakdata_ori(i,2)+0.002,num2str(round((1/peakdata_ori(i,1))/1000,1)));
    text((peakdata(i,1))*1e3,peakdata(i,2)/normalize_global+0.002,num2str(round((1/peakdata(i,1))/1000,1)));
    end
subplot(3,4,9) 
    [f,phase,lags] = fun_phasediagram(origi(:,2),origi(:,2),1/Fs,521,peakdata_ori, false);
    plot(f,phase)
    plot(lags(:,1)*1e3,lags(:,2)/1e3,'or');
    xlim([0 0.07]); ylim([-5 15])
    line([0 7],[0 0],'Color','k','LineStyle',':') 
%    title('original signal')
   	xlabel('Frequency (kyr-1)');
    ylabel('Phase Shift (kyr)');

subplot(3,4,10) 
    [f,phase,lags] = fun_phasediagram(origi(:,2),hom05(:,2),1/Fs,521,peakdata_ori, false);
    plot(f,phase)
    plot(lags(:,1)*1e3,lags(:,2)/1e3,'or');
    xlim([0 0.07]); ylim([-5 15])
    line([0 7],[0 0],'Color','k','LineStyle',':') 
%    title('hom mix 5 cm')
   	xlabel('Frequency (kyr-1)');
subplot(3,4,11) 
    [f,phase,lags] = fun_phasediagram(origi(:,2),hom10(:,2),1/Fs,521,peakdata_ori, false);
    plot(f,phase)
    plot(lags(:,1)*1e3,lags(:,2)/1e3,'or');
    xlim([0 0.07]); ylim([-5 15])
    line([0 7],[0 0],'Color','k','LineStyle',':') 
%    title('hom mix 10 cm')
   	xlabel('Frequency (kyr-1)');
subplot(3,4,12) 
    [f,phase,lags] = fun_phasediagram(origi(:,2),hom20(:,2),1/Fs,521,peakdata_ori, true);
    plot(f,phase)
    plot(lags(:,1)*1e3,lags(:,2)/1e3,'or');
    xlim([0 0.07]); ylim([-5 15])
    line([0 7],[0 0],'Color','k','LineStyle',':') 
%    title('hom mix 20 cm')
   	xlabel('Frequency (kyr-1)');

%    print('-depsc', 'La2004_1E1T1P_PhaseShify_HomoMix_v2.eps');

    
%     % convert phase angle to kyr
% phase = [f phase];
% phase(:,2) = (phase(:,2).*(1/phase(:,1))) / (2*pi);
% phase(:,2) = phase(:,2)./1e3;
    

