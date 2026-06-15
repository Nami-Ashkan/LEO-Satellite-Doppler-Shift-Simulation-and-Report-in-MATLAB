clear all; close all; clc;


w_0 = 2*pi/(24*60*60); %earth angular velocity
mu = 3.986*10^14;
r_E = 6371000;
h =[600000 900000 1200000]; %given hights to plot meters
style = {'-.','--',':'};

figure(1)
f = figure(1)
f.Position(3:4) = [1080 720];

for i=1:3 
  t = (-250-(100*i)):0.1:(250+(100*i));
  r = r_E + h(i);
  w = sqrt(mu./((r_E+h(i)).^3)); %angular velcity of SL
  d = sqrt((r_E)^2 + r^2-2*r_E*r*cos((w - w_0)*t));
  d = d/1000; %distance in km
  plot(t,d,'linestyle',style{i},'lineWidth',1.4)
  xlabel('time(s)');
  ylabel('d (km)');
  legend('h=600 km','h=900 km','h=1200 km','location','north') 
  grid on
  hold on
end

saveas(1,'fig_4.eps');
filename = sprintf('fig_4.png');
print('-r600','-dtiff',filename);