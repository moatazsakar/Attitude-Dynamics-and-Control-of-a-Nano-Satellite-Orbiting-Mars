function [Bsat_values] = Babysat(time,Bsat_int)

%%%%%%%% Create two body problem
mu_mars = 42828.3;                            % Km^3/sec^2
rBsat = Bsat_int(1:3);
vBsat = Bsat_int(4:6);
aBsat = (-mu_mars/(norm(rBsat)^3))*(rBsat);
Bsat_values = [vBsat;aBsat];

end