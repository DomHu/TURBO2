function turbo2script_multiple_just_abu(datafile, nocarriers, noexps)
%% MATLAB script to run TURBO2

% datafile = INPUT FILE WITH REQUIRED DATA
% noexps = number of experiment for SA
% nocarriers + number of carriers to be measured
% clear
% data = load('turbo2input_homogenousmixing.txt');
% data = load('turbo2input_impulsesequence.txt');
%data = load('turbo2input_impulsesequence_5cm.txt');
% data = load('turbo2input_stepsequence.txt');
% data = load('turbo2input_termination.txt');

data = load(datafile);
%%
age   = data(:,1);
mxl   = data(:,2);
abu   = data(:,3);
iso   = data(:,4);
lngth = length(data(:,1));

numb  = nocarriers;     %50;     % number of carriers to be measured
exps = noexps;     % number of different experiments

%%
for i = 1:exps           
    [oriabu(i,:,:),bioabu(i,:,:),oriiso(i,:,:),bioiso(i,:,:)] = turbo2(abu,iso,mxl,numb);
end
%%
%[oriabu1,bioabu1,oriiso1,bioiso1] = turbo2(abu,iso,mxl,numb);
%[oriabu2,bioabu2,oriiso2,bioiso2] = turbo2(abu,iso,mxl,numb);
mean_bioabu1 = zeros(1,lngth);
mean_bioabu2 = zeros(1,lngth);
mean_bioiso1 = zeros(1,lngth);
mean_bioiso2 = zeros(1,lngth);


%%
mxltext = num2str(mean(mxl));
numbtxt = num2str(numb,2);
expstxt = num2str(exps,2);

%%
subplot(2,1,1), hold on
for i = 1:exps           
    plot(1:lngth,bioabu(i,:,1), 'Color', [0.5 0.5 0.5],'Linewidth',1.5)
    mean_bioabu1 = mean_bioabu1+bioabu(i,:,1);
end
plot(1:lngth,oriabu(1,:,1),'k','Linewidth',2.0) % plot one of the original abu
mean_bioabu1 = mean_bioabu1/exps;
plot(1:lngth,mean_bioabu1, '-b','Linewidth',2.0)
plot(1:lngth,numb*ones(lngth),'g')
set(gca,'XGrid','On','YGrid','On','YTick',[0 200 400 600 800 1000])
xlabel('Core depth (cm) ');
ylabel('Number of Particles');
legend('Original abundance','Bioturbated abundance Species 1')
title('Abundance of Species 1')

subplot(2,1,2), hold on
for i = 1:exps           
    plot(1:lngth,bioabu(i,:,2), 'Color', [0.5 0.5 0.5],'Linewidth',1.5)
    mean_bioabu2 = mean_bioabu2+bioabu(i,:,2);
end
plot(1:lngth,oriabu(1,:,2),'k','Linewidth',2.0) % plot one of the original abu
mean_bioabu2 = mean_bioabu2/exps;
plot(1:lngth,mean_bioabu2, '-r','Linewidth',2.0)
plot(1:lngth,numb*ones(lngth),'g')
set(gca,'XGrid','On','YGrid','On','YTick',[0 200 400 600 800 1000])
xlabel('Core depth (cm) ');
ylabel('Number of Particles');
legend('Original abundance','Bioturbated abundance Species 2')
title('Abundance of Species 2')

%%% Isotope plots:
% % % % subplot(2,2,3), hold on
% % % % for i = 1:exps           
% % % %     plot(1:lngth,oriiso(i,:,1),'k','Linewidth',2.0)
% % % %     plot(1:lngth,bioiso(i,:,1), 'Color', [0.5 0.5 0.5],'Linewidth',1.5)
% % % %     mean_biosio1 = mean_bioiso1+bioiso(i,:,1);
% % % % end
% % % % mean_bioiso1 = mean_bioiso1/exps;
% % % % plot(1:lngth,mean_bioiso1, '-b','Linewidth',2.0)
% % % % set(gca,'YDir','Reverse','XGrid','On','YGrid','On')
% % % % xlabel('Core depth (cm) ');
% % % % ylabel('\delta^{18}O');
% % % % legend('Original isotope record','Bioturbated isotope record Sp 1')
% % % % title('Isotopes of Species 1')
% % % % 
% % % % subplot(2,2,4), hold on
% % % % for i = 1:exps           
% % % %     plot(1:lngth,oriiso(i,:,2),'k','Linewidth',2.0)
% % % %     plot(1:lngth,bioiso(i,:,2), 'Color', [0.5 0.5 0.5],'Linewidth',1.5)   
% % % %     mean_biosio2 = mean_bioiso2+bioiso(i,:,2);
% % % % end
% % % % mean_bioiso2 = mean_bioiso2/exps;
% % % % plot(1:lngth,mean_bioiso2, '-r','Linewidth',2.0)
% % % % set(gca,'YDir','Reverse','XGrid','On','YGrid','On')
% % % % xlabel('Core depth (cm) ');
% % % % ylabel('\delta^{18}O');
% % % % legend('Original isotope record','Bioturbated isotope record Sp 2')
% % % % title('Isotopes of Species 2')

%%
%printfilename = ['turbo2_fig1_',mxltext,'cm_',numbtxt,'carriers.tiff'];
printfilename = [datafile(1:end-4),'_',numbtxt,'carriers_',expstxt,'Exps_fig1'];
% print('-dtiff',[printfilename,'.tiff']);
print('-depsc', printfilename);

%% combined Isotope plots
% % % % figure, hold on
% % % % for i = 1:exps           
% % % %     plot(1:lngth,oriiso(i,:,1),'k')
% % % %     plot(1:lngth,bioiso(i,:,1),'b')
% % % %     plot(1:lngth,bioiso(i,:,2),'r')
% % % % end
% % % % set(gca,'YDir','Reverse','XGrid','On','YGrid','On','Box','On')
% % % % titletxt = ['Isotopes of Carriers 1+2, ',mxltext,...
% % % %     ' cm Mixed Layer, ',numbtxt,' Carriers'];
% % % % title(titletxt)
% % % % legend('Original Isotopes','carriers 1','carriers 2')
% % % % 
% % % % %%
% % % % printfilename = ['turbo2_multiple_fig2_',mxltext,'cm_',numbtxt,'carriers.tiff'];
% % % % print('-dtiff',printfilename)
% % % % % 



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


