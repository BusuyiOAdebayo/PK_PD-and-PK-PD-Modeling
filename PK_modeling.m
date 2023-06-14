% parameter values
function X = simX(Xin_init,Xinit,Kads,Keli,tspan,optionsSim)
myPKSingleCompt_h = @(t,X) myPKSingleCompt(t,X,Keli,Xin_init,Kads);
[t,X] = ode45(myPKSingleCompt_h,tspan,Xinit,optionsSim);

% Define compartment function:
function dXdt = myPKSingleCompt(t,X,Keli,Xin_init,Kads)
  %dXdt = zeros(1,1)
  Xin_h = @(t,Xin) myPKAds(t,Xin,Xininit,Kads);
  dXdt = Kads*Xin_h-Keli*X;
end
end
