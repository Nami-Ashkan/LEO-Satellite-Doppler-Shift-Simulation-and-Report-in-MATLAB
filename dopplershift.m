clear all; close all; clc;

mu = 3.986*10^14;
w_0 = (2*pi)/(24*60*60); %calculating the angular velocity
r_E = 6371000;
c = 3*10^8; 
h = [600000 900000 1200000]; %given hights to plot meters
style = {'-.','--',':'};

figure(1)
f = figure(1)
f.Position(3:4) = [1080 720];

for i=1:3
  t = (-250-(100*i)):0.1:(250+(100*i));
  r = r_E+h(i); %distance r
  w = sqrt(mu./((r_E + h(i)).^3)); %angular velcity of SL
  d = sqrt(r_E^2 + r^2 - 2*r_E*r*cos((w - w_0)*t)); 
  f_d = -((w - w_0)./c) .* (r_E * r * sin((w - w_0).*t)./d);
  f_d = f_d * 20 *10^9; %multiplied by carier frequency 
  f_d = f_d / 10^3; %frequency in kHz
  plot(t,f_d,style{i},'lineWidth',1.4)
  legend('h=600 km','h=900 km','h=1200 km')
  xlabel('time(s)');
  ylabel('Doppler shift(kHz)');
  grid on
  hold on  
end

saveas(1,'fig_3.eps');
filename = sprintf('fig_3.png');
print('-r600','-dtiff',filename);