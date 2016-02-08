% Multiple Scales Realized Variance with Rolling Window
%
% 
% Multiple Series Realized Variance (MSRV) is a generalization of the TSRV estimator 
% of integrated volatility. It uses multiple time scales to account for the effects of additive 
% market microstructure noise.
%  
% 
% Usage
% 
% variance_msrvRolling(estimator,K,J,wLength)
% 
%
% estimator
%        Estimator object created using estimator_create( ) function
%
% K
%        number of subsamples in the slow time series (default: 2)
%
% J
%        number of subsamples in the fast time series (default: 1)
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
% variance_msrvRolling(estimatorExample,2,1,23400)
function [ result ] = variance_msrvRolling( estimator ,K,J,wLength)
     result=estimator_metric(estimator,'metric','Rol_MSRV','wLength',int16(wLength),'K',int16(K),'J',int16(J));
end

