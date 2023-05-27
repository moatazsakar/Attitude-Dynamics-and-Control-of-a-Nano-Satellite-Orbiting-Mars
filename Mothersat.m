function [Msat_values] = Mothersat(time,Msat_int)

%%%%%%%% Create two body problem
mu_mars = 42828.3;                            % Km^3/sec^2
rMsat = Msat_int(1:3);
vMsat = Msat_int(4:6);
aMsat = (-mu_mars/(norm(rMsat)^3))*(rMsat);
Msat_values = [vMsat;aMsat];

end