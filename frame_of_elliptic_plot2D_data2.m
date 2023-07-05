
%   The experimental part of the eye tracking method for depression based on local optical flow estimation in the paper outputs a projection of 
%   a three-dimensional image, that is, a two-dimensional image, for easy observation of the distribution in the x and y directions.  
%   Copyright Dr. Yang Li
%   School of Basic, Huizhou Health Sciences and Polytechnic,
%   Huizhou, China 516025
%   $Revision: 1.0 $ 
%   $Date: 2023/04/24 17:12:06 $
%------------------------------------------------------------------------------

clear;
close all;
clc;
data = xlsread('data_circle.csv'); 
set(0,'defaultfigurecolor','w') 
set(gcf,'position',[300,300,500,300]);

scatter(data(:,5),data(:,1),20,'mp','filled')
hold on
scatter(data(:,5),data(:,3),20,'bo','filled')

%Set the x-axis range and scale
set(gca,'XLim',[0 700]);
set(gca,'XTick',[0:100:700]);
xlabel('frame','Fontsize',10); 

%Set the y-axis range and scale
set(gca,'YLim',[50 250]);
set(gca,'YTick',[50:50:250]);
ylabel('X & Y eye movement/pixel','Fontsize',10); 


%Y
hold on
scatter(data(:,5),data(:,2),20,'gs','filled')
hold on
scatter(data(:,5),data(:,4),20,'r','filled')



%legend
h1=legend('X of left eye','X of right eye','Y of left eye','Y of right eye','Location','South');

set(h1,'Orientation','horizon','Box','off');

