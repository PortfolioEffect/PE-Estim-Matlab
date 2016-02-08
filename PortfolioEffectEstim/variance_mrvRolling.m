% Modulated Realized Variance with Rolling Window
%
% 
% Modulated Realized Variance (MRV) is an integrated variance estimator introduced by 
% Podolskij and Vetter. It is based on the concept of multipower variation and assumes 
% additive noise structure.
% 
% 
% Usage
% 
% variance_mrvRolling(estimator,wLength)
% 
%
% estimator
%        Estimator object created using estimator_create( ) function
%
% wLength
%        Length of a rolling window for rolling estimators. Default window length is 23400 (number of seconds in a trading day)
%
% Return Value
% 
% a numeric vector of the same length as data.
% 
% Note
%
% PortfolioEffect - Matlab Interface to Quant API
% 
% Copyright (C) 2010 - 2015 Snowfall Systems, Inc.
%
%
% Examples
% 
% estimatorExample=estimator_create('asset','AAPL','fromTime','2014-09-10 09:30:01','toTime','2014-09-14 16:00:00');
% variance_mrvRolling(estimatorExample,23400)
function [ result ] = variance_mrvRolling( estimator,wLength )
     result=estimator_metric(estimator,'metric','Rol_MRV','wLength',int16(wLength));
end

