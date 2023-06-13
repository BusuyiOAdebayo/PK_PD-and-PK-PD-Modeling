% parameter values

% Define you adsorption function:
function dXindt = myAds(t,Xin,Xininit,Kads)
  %dXindt = zeros(1,1);
  dXindt = -Kads*Xin
end

% Define compartment function:
function dXdt = myComp1(t,X,Xinit,Keli)
  %dXdt = zeros(1,1)
  Xin_h = @(t,Xin) myAds(t,Xin,Xininit,Kads);
  dXdt = Kads*Xin_h-Keli*X;
end
