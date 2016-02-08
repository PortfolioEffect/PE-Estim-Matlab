% Realized Variance with Rolling Window
%
% 
% Realized Variance (RV) is the sum of squared returns. For instance the RV can be 
% the sum of squared daily returns for a particular month, which would yield a measure 
% of price variation over this month. This variance estimator does not account for market microstructure effects.
% 
% Usage
% 
% variance_rvRolling(estimator,wLength)
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
% variance_rvRolling(estimatorExample,23400)
function [ result ] = variance_rvRolling( estimator ,wLength)
     result=estimator_metric(estimator,'metric','Rol_RV','wLength',int16(wLength));
end

