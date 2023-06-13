% parameter values

% Define you adsorption function:
function dXindt = myPKAds(t,Xin,Xininit,Kads)
  %dXindt = zeros(1,1);
  dXindt = -Kads*Xin
end
