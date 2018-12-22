function turbo2script_multiple_fromexceldata_3zbio(data, nocarriers, noexps, expname)
%% MATLAB script to run TURBO2 experiment with input data & 3 different bioturbation depth (mxl, 2*mxl, 4*mxl)
% ALSO plots the results - either just the isotope signal 
% or if abundance change is wanted set plot_abu_iso = true;
% or if just the mean result of all experiments is wanted set plot_just_mean = true;

% data = matrix of required data (age, mxl, abu, iso) - explanation see below
% nocarriers = number of carriers to be measured
% noexps = number of experiments for SA
% expname = experiment name

% age = age of sediment layer down core
% mxl = series of mixed layer thicknesses (zbio) down core
% abu = series of abundances of carrier type 1 down core
% iso = original isotope signature of both carrier  types 1 and 2

% clear
% data = load('turbo2input_homogenousmixing.txt');
% data = load('turbo2input_impulsesequence.txt');
% data = load('turbo2input_impulsesequence_5cm.txt');
% data = load('turbo2input_stepsequence.txt');
% data = load('turbo2input_termination.txt');

%data = load(datafile);

%%

plot_abu_iso = false;       % plot the abundance and isotope figures?
plot_just_mean = false;     % only plot the mean result, not every single experiment in grey
plot_isotope_2species = false;     % plot isotope plots for both species

age   = data(:,1);
mxl1   = data(:,2);
mxl2 = mxl1.*2;
mxl3 = mxl1.*4;
abu   = data(:,3);
iso   = data(:,4);
lngth = length(data(:,1));

numb  = nocarriers;     %50;     % number of carriers to be measured
exps = noexps;     % number of different experiments

%%
for i = 1:exps       
    i
    [oriabu(i,:,:),bioabu(i,:,:),oriiso(i,:,:),bioiso(i,:,:)] = turbo2(abu,iso,mxl1,numb);
    [oriabu2(i,:,:),bioabu2(i,:,:),oriiso2(i,:,:),bioiso2(i,:,:)] = turbo2(abu,iso,mxl2,numb);
    [oriabu3(i,:,:),bioabu3(i,:,:),oriiso3(i,:,:),bioiso3(i,:,:)] = turbo2(abu,iso,mxl3,numb);
end
%%
%[oriabu1,bioabu1,oriiso1,bioiso1] = turbo2(abu,iso,mxl,numb);
%[oriabu2,bioabu2,oriiso2,bioiso2] = turbo2(abu,iso,mxl,numb);
% variable for mean results of mxl1
mean_bioabu1_mxl1 = zeros(1,lngth);
mean_bioabu2_mxl1 = zeros(1,lngth);
mean_bioiso1_mxl1 = zeros(1,lngth);
mean_bioiso2_mxl1 = zeros(1,lngth);
% variable for mean results of mxl2
mean_bioabu1_mxl2 = zeros(1,lngth);
mean_bioabu2_mxl2 = zeros(1,lngth);
mean_bioiso1_mxl2 = zeros(1,lngth);
mean_bioiso2_mxl2 = zeros(1,lngth);
% variable for mean results of mxl3
mean_bioabu1_mxl3 = zeros(1,lngth);
mean_bioabu2_mxl3 = zeros(1,lngth);
mean_bioiso1_mxl3 = zeros(1,lngth);
mean_bioiso2_mxl3 = zeros(1,lngth);

%%
mxltext = num2str(mean(mxl1));
mxltext2 = num2str(mean(mxl2));
mxltext3 = num2str(mean(mxl3));
numbtxt = num2str(numb,2);
expstxt = num2str(exps,2);
abutxt = num2str(max(abu),2);

set(0,'DefaultAxesFontSize',16)

%%  Plot isotope plots only and just for species 1 (no abundance change here)
figure, hold on
for i = 1:exps           
% mxl1
    plot(1:lngth,bioiso(i,:,1), 'Color', [1.0 0.8 0.8],'Linewidth',1.5)
%    plot(1:lngth,bioiso(i,:,2), 'Color', [0.7 0.7 0.7],'Linewidth',1.5)
  	mean_bioiso1_mxl1 = mean_bioiso1_mxl1+bioiso(i,:,1);
%    mean_bioiso2_mxl1 = mean_bioiso2_mxl1+bioiso(i,:,2);        
% mxl2
    plot(1:lngth,bioiso2(i,:,1), 'Color', [0.8 1.0 0.8],'Linewidth',1.5)
%    plot(1:lngth,bioiso2(i,:,2), 'Color', [0.7 0.7 0.7],'Linewidth',1.5)
  	mean_bioiso1_mxl2 = mean_bioiso1_mxl2+bioiso2(i,:,1);
%    mean_bioiso2_mxl2 = mean_bioiso2_mxl2+bioiso2(i,:,2);
% mxl3
    plot(1:lngth,bioiso3(i,:,1), 'Color', [0.8 0.8 1.0],'Linewidth',1.5)
%   plot(1:lngth,bioiso3(i,:,2), 'Color', [0.7 0.7 0.7],'Linewidth',1.5)
  	mean_bioiso1_mxl3 = mean_bioiso1_mxl3+bioiso3(i,:,1);
%    mean_bioiso2_mxl3 = mean_bioiso2_mxl3+bioiso3(i,:,2);
end
plot(1:lngth,oriiso(1,:,1),'k','Linewidth',2.0) % plot original iso for species 1
% mxl1
mean_bioiso1_mxl1 = mean_bioiso1_mxl1/exps;
mean_bioiso2_mxl1 = mean_bioiso2_mxl1/exps;
plot(1:lngth,mean_bioiso1_mxl1, '-r','Linewidth',2.0)
%plot(1:lngth,mean_bioiso2_mxl1, '--r','Linewidth',2.0)
% mxl2
mean_bioiso1_mxl2 = mean_bioiso1_mxl2/exps;
%mean_bioiso2_mxl2 = mean_bioiso2_mxl2/exps;
plot(1:lngth,mean_bioiso1_mxl2, '-g','Linewidth',2.0)
%plot(1:lngth,mean_bioiso2_mxl2, '--r','Linewidth',2.0)
% mxl3
mean_bioiso1_mxl3 = mean_bioiso1_mxl3/exps;
mean_bioiso2_mxl3 = mean_bioiso2_mxl3/exps;
plot(1:lngth,mean_bioiso1_mxl3, '-b','Linewidth',2.0)
%plot(1:lngth,mean_bioiso2_mxl3, '--r','Linewidth',2.0)



%set(gca,'YDir','Reverse','XGrid','On','YGrid','On','Box','On', 'XLim',[0,200])
set(gca,'YDir','Reverse','XGrid','On','YGrid','On','Box','On', 'XLim',[0,200], 'YLim',[1.0,3.0],'YTick',[1.0 1.5 2.0 2.5 3.0])
xlabel('Core depth (cm) ');
ylabel('\delta^{18}O');
titletxt = ['Isotopes of Carriers 1+2, ',mxltext,...
    ' cm Mixed Layer, ',numbtxt,' Carriers'];
title(titletxt)
%legend('Original Isotopes','carriers 1','carriers 2')


printfilename = ['3zbio_',expname,'_',abutxt,'abu_',numbtxt,'carriers_',expstxt,'Exps'];
% print('-depsc', printfilename); % save figure in this folder
save(['data/mat/',printfilename,'.mat'],'printfilename', 'lngth','bioiso','bioiso2','bioiso3', 'oriiso', 'mean_bioiso1_mxl1', 'mean_bioiso1_mxl2', 'mean_bioiso1_mxl3','expname', 'exps', 'bioabu','bioabu2','bioabu3', 'oriabu', 'oriabu2', 'oriabu3', 'mean_bioabu1_mxl1', 'mean_bioabu1_mxl2', 'mean_bioabu1_mxl3')
print('-depsc', ['output/',printfilename]);   % save figure in extra output folder
% print('-dtiff',printfilename)
% 

%%  Plot isotope plots only for 2 species (just 1 mxl)
if(plot_isotope_2species)
figure, hold on
for i = 1:exps           
    plot(1:lngth,bioiso(i,:,1), 'Color', [0.5 0.5 0.5],'Linewidth',1.5)
    plot(1:lngth,bioiso(i,:,2), 'Color', [0.7 0.7 0.7],'Linewidth',1.5)
  	mean_bioiso1_mxl1 = mean_bioiso1_mxl1+bioiso(i,:,1);
    mean_bioiso2_mxl1 = mean_bioiso2_mxl1+bioiso(i,:,2);
end
plot(1:lngth,oriiso(1,:,1),'k','Linewidth',2.0) % plot one of the original iso
mean_bioiso1_mxl1 = mean_bioiso1_mxl1/exps;
mean_bioiso2_mxl1 = mean_bioiso2_mxl1/exps;
plot(1:lngth,mean_bioiso1_mxl1, '-b','Linewidth',2.0)
plot(1:lngth,mean_bioiso2_mxl1, '--r','Linewidth',2.0)
set(gca,'YDir','Reverse','XGrid','On','YGrid','On','Box','On', 'XLim',[0,200])
xlabel('Core depth (cm) ');
ylabel('\delta^{18}O');
titletxt = ['Isotopes of Carriers 1+2, ',mxltext,...
    ' cm Mixed Layer, ',numbtxt,' Carriers'];
title(titletxt)
%legend('Original Isotopes','carriers 1','carriers 2')


printfilename = [expname,'_zbio',mxltext,'_',numbtxt,'carriers_',expstxt,'Exps_fig2_iso_2SPECIES'];
% print('-depsc', printfilename); % save figure in this folder
print('-depsc', ['output/',printfilename]);   % save figure in extra output folder
% print('-dtiff',printfilename)
% 
end

%% Plot abundance and isotope plots
if(plot_abu_iso)
figure
subplot(2,2,1), hold on
for i = 1:exps           
    plot(1:lngth,bioabu(i,:,1), 'Color', [0.5 0.5 0.5],'Linewidth',1.5)
    mean_bioabu1_mxl1 = mean_bioabu1_mxl1+bioabu(i,:,1);
end
plot(1:lngth,oriabu(1,:,1),'k','Linewidth',2.0) % plot one of the original abu
mean_bioabu1_mxl1 = mean_bioabu1_mxl1/exps;
plot(1:lngth,mean_bioabu1_mxl1, '-b','Linewidth',2.0)
plot(1:lngth,numb*ones(lngth),'g')
set(gca,'XGrid','On','YGrid','On', 'YLim',[0,500],'YTick',[0 100 200 300 400 500])
% set(gca,'XGrid','On','YGrid','On', 'XLim',[0,200], 'YLim',[0,600],'YTick',[0 200 400 600])
% set(gca,'XGrid','On','YGrid','On','YTick',[0 200 400 600 800 1000])
xlabel('Core depth (cm) ');
ylabel('Number of Particles');
% legend('Original abundance','Bioturbated abundance Species 1')
title('Abundance of Species 1')

subplot(2,2,2), hold on
for i = 1:exps           
    plot(1:lngth,bioabu(i,:,2), 'Color', [0.7 0.7 0.7],'Linewidth',1.5)
    mean_bioabu2_mxl1 = mean_bioabu2_mxl1+bioabu(i,:,2);
end
plot(1:lngth,oriabu(1,:,2),'k','Linewidth',2.0) % plot one of the original abu
mean_bioabu2_mxl1 = mean_bioabu2_mxl1/exps;
plot(1:lngth,mean_bioabu2_mxl1, '-r','Linewidth',2.0)
plot(1:lngth,numb*ones(lngth),'g')
set(gca,'XGrid','On','YGrid','On', 'YLim',[0,500],'YTick',[0 100 200 300 400 500])
% set(gca,'XGrid','On','YGrid','On', 'XLim',[0,200], 'YLim',[0,600],'YTick',[0 200 400 600])
% set(gca,'XGrid','On','YGrid','On','YTick',[0 200 400 600 800 1000])
xlabel('Core depth (cm) ');
ylabel('Number of Particles');
% legend('Original abundance','Bioturbated abundance Species 2')
title('Abundance of Species 2')

subplot(2,2,3), hold on
for i = 1:exps           
    plot(1:lngth,bioiso(i,:,1), 'Color', [0.5 0.5 0.5],'Linewidth',1.5)
    mean_bioiso1_mxl1 = mean_bioiso1_mxl1+bioiso(i,:,1);
end
plot(1:lngth,oriiso(1,:,1),'k','Linewidth',2.0) % plot one of the original iso
mean_bioiso1_mxl1 = mean_bioiso1_mxl1/exps;
plot(1:lngth,mean_bioiso1_mxl1, '-b','Linewidth',2.0)
set(gca,'YDir','Reverse','XGrid','On','YGrid','On');%, 'XLim',[0,200])
xlabel('Core depth (cm) ');
ylabel('\delta^{18}O');
% legend('Original isotope record','Bioturbated isotope record Sp 1')
title('Isotopes of Species 1')

subplot(2,2,4), hold on
for i = 1:exps           
    plot(1:lngth,bioiso(i,:,2), 'Color', [0.7 0.7 0.7],'Linewidth',1.5)   
    mean_bioiso2_mxl1 = mean_bioiso2_mxl1+bioiso(i,:,2);
end
plot(1:lngth,oriiso(1,:,2),'k','Linewidth',2.0) % plot one of the original iso
mean_bioiso2_mxl1 = mean_bioiso2_mxl1/exps;
plot(1:lngth,mean_bioiso2_mxl1, '-r','Linewidth',2.0)
set(gca,'YDir','Reverse','XGrid','On','YGrid','On');%, 'XLim',[0,200])
xlabel('Core depth (cm) ');
ylabel('\delta^{18}O');
% legend('Original isotope record','Bioturbated isotope record Sp 2')
title('Isotopes of Species 2')

%printfilename = ['turbo2_fig1_',mxltext,'cm_',numbtxt,'carriers.tiff'];
printfilename = [expname,'_zbio',mxltext,'_',numbtxt,'carriers_',expstxt,'Exps_fig1'];
% print('-dtiff',[printfilename,'.tiff']);
% print('-depsc', printfilename);
print('-depsc', ['output/', printfilename]);

end


%%  Plot only the mean result, not every single experiment in grey
if(plot_just_mean)
    figure
    subplot(2,2,1), hold on
    plot(1:lngth,oriabu(1,:,1),'k','Linewidth',2.0) % plot one of the original abu
    plot(1:lngth,mean_bioabu1_mxl1, '-b','Linewidth',2.0)
    plot(1:lngth,numb*ones(lngth),'g')
    set(gca,'XGrid','On','YGrid','On', 'YLim',[0,500],'YTick',[0 100 200 300 400 500])
    % set(gca,'XGrid','On','YGrid','On','YTick',[0 200 400 600 800 1000])
    xlabel('Core depth (cm) ');
    ylabel('Number of Particles');
    % legend('Original abundance','Bioturbated abundance Species 1')
    title('Abundance of Species 1')

    subplot(2,2,2), hold on
    plot(1:lngth,oriabu(1,:,2),'k','Linewidth',2.0) % plot one of the original abu
    plot(1:lngth,mean_bioabu2_mxl1, '-r','Linewidth',2.0)
    plot(1:lngth,numb*ones(lngth),'g')
    set(gca,'XGrid','On','YGrid','On', 'YLim',[0,500],'YTick',[0 100 200 300 400 500])
    % set(gca,'XGrid','On','YGrid','On','YTick',[0 200 400 600 800 1000])
    xlabel('Core depth (cm) ');
    ylabel('Number of Particles');
    % legend('Original abundance','Bioturbated abundance Species 2')
    title('Abundance of Species 2')

    subplot(2,2,3), hold on
    plot(1:lngth,oriiso(1,:,1),'k','Linewidth',2.0) % plot one of the original iso
    plot(1:lngth,mean_bioiso1_mxl1, '-b','Linewidth',2.0)
    set(gca,'YDir','Reverse','XGrid','On','YGrid','On')
    xlabel('Core depth (cm) ');
    ylabel('\delta^{18}O');
    % legend('Original isotope record','Bioturbated isotope record Sp 1')
    title('Isotopes of Species 1')

    subplot(2,2,4), hold on
    plot(1:lngth,oriiso(1,:,2),'k','Linewidth',2.0) % plot one of the original iso
    plot(1:lngth,mean_bioiso2_mxl1, '-r','Linewidth',2.0)
    set(gca,'YDir','Reverse','XGrid','On','YGrid','On')
    xlabel('Core depth (cm) ');
    ylabel('\delta^{18}O');
    % legend('Original isotope record','Bioturbated isotope record Sp 2')
    title('Isotopes of Species 2')

    %printfilename = ['turbo2_fig1_',mxltext,'cm_',numbtxt,'carriers.tiff'];
    printfilename = [datafile(1:end-4),'_',numbtxt,'carriers_',expstxt,'Exps_fig1_abu+iso_1Exp'];
%    print('-dtiff',[printfilename,'.tiff']);
    print('-depsc', printfilename);
    % print('-depsc', ['output/', printfilename]);
end

%%
% figure, hold on
% plot(1:lngth,oriiso1(:,2),'k')
% plot(1:lngth,bioiso1(:,2),'b')
% plot(1:lngth,bioiso2(:,2),'r')
% set(gca,'YDir','Reverse','XGrid','On','YGrid','On','Box','On')
% titletxt = ['Isotopes of Carriers 1+2, ',mxltext,...
%     ' cm Mixed Layer, ',numbtxt,' Carriers'];
% title(titletxt)
% legend('Original Isotopes','carriers 1','carriers 2')
% 
% %%
% printfilename = ['turbo2_fig2_',mxltext,'cm_',numbtxt,'carriers.tiff'];
% print('-dtiff',printfilename)


