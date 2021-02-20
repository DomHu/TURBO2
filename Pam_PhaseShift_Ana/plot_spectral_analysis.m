% add path to search
addpath('wavelet-coherence-master');

% set sampling frequecy
Fs = 1/1000;

% load data
origi = load('La2004-1E1T-1P-1-1000_transformed.txt');
hom05 = load('La2004_1E1T1P_transformed_zbio5.txt');
hom10 = load('La2004_1E1T1P_transformed_zbio10.txt');
hom20 = load('La2004_1E1T1P_transformed_zbio20.txt');


% plotterdeplotterdeplot
figure(1)
subplot(3,4,[1 2 3 4])
    plot(origi(:,1),origi(:,2),'k-',hom05(:,1),hom05(:,2),'r-',...
         hom10(:,1),hom10(:,2),'g-',hom20(:,1),hom20(:,2),'b-'), grid;
subplot(3,4,5) 
    [PS,f,peakdata] = fun_FFT(origi,1/Fs,'N','PSD');
    plot(f(2:end-1),PS(2:end-1),peakdata(:,1),peakdata(:,2),'or');   
    xlim([0 7E-5]); ylim([0 1.1])
    title('original signal')
    for i = 1:4
    text((peakdata(i,1)),peakdata(i,2)+0.002,num2str(round((1/peakdata(i,1))/1000,1)));
    end
subplot(3,4,6) 
    [PS,f,peakdata] = fun_FFT(hom05,1/Fs,'N','PSD');
    plot(f(2:end-1),PS(2:end-1),peakdata(:,1),peakdata(:,2),'or');   
    xlim([0 7E-5]); ylim([0 1.1])
    title('hom mix 5 cm')
    for i = 1:4
    text((peakdata(i,1)),peakdata(i,2)+0.002,num2str(round((1/peakdata(i,1))/1000,1)));
    end    
 subplot(3,4,7)
    [PS,f,peakdata] = fun_FFT(hom10,1/Fs,'N','PSD');
    plot(f(2:end-1),PS(2:end-1),peakdata(:,1),peakdata(:,2),'or');   
    xlim([0 7E-5]); ylim([0 1.1])
    title('hom mix 10 cm')
  	for i = 1:4
    text((peakdata(i,1)),peakdata(i,2)+0.002,num2str(round((1/peakdata(i,1))/1000,1)));
    end
subplot(3,4,8) 
    [PS,f,peakdata] = fun_FFT(hom20,1/Fs,'N','PSD');
    plot(f(2:end-1),PS(2:end-1),peakdata(:,1),peakdata(:,2),'or');   
    xlim([0 7E-5]); ylim([0 1.1])
    title('hom mix 20 cm')
    for i = 1:4
    text((peakdata(i,1)),peakdata(i,2)+0.002,num2str(round((1/peakdata(i,1))/1000,1)));
    end
subplot(3,4,9) 
    [f,phase,lags] = fun_phasediagram(origi(:,2),origi(:,2),1/Fs,521,peakdata);
    plot(f,phase)
    plot(lags(:,1),lags(:,2)/1e3,'or');
    xlim([0 7E-5]); ylim([-20 20])
    line([0 7E-5],[0 0],'Color','k','LineStyle',':') 
    title('original signal')
subplot(3,4,10) 
    [f,phase,lags] = fun_phasediagram(origi(:,2),hom05(:,2),1/Fs,521,peakdata);
    plot(f,phase)
    plot(lags(:,1),lags(:,2)/1e3,'or');
    xlim([0 7E-5]); ylim([-20 20])
    line([0 7E-5],[0 0],'Color','k','LineStyle',':') 
    title('hom mix 5 cm')
subplot(3,4,11) 
    [f,phase,lags] = fun_phasediagram(origi(:,2),hom10(:,2),1/Fs,521,peakdata);
    plot(f,phase)
    plot(lags(:,1),lags(:,2)/1e3,'or');
    xlim([0 7E-5]); ylim([-20 20])
    line([0 7E-5],[0 0],'Color','k','LineStyle',':') 
    title('hom mix 10 cm')
subplot(3,4,12) 
    [f,phase,lags] = fun_phasediagram(origi(:,2),hom20(:,2),1/Fs,521,peakdata);
    plot(f,phase)
    plot(lags(:,1),lags(:,2)/1e3,'or');
    xlim([0 7E-5]); ylim([-20 20])
    line([0 7E-5],[0 0],'Color','k','LineStyle',':') 
    title('hom mix 20 cm')
    
    print('-depsc', 'La2004_1E1T1P_PhaseShify_HomoMix_V1.eps');

    
%     % convert phase angle to kyr
% phase = [f phase];
% phase(:,2) = (phase(:,2).*(1/phase(:,1))) / (2*pi);
% phase(:,2) = phase(:,2)./1e3;
    

