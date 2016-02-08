% Two Scales Realized Variance with Rolling Window
%
% 
% Two Scale Realized Variance (TSRV) estimates integrated volatility consistently. 
% The idea is to use realized variance type estimators over two time scales to correct 
% the effect of additive market microstructure noise.
%    
% 
% Usage
% 
% variance_tsrvRolling(estimator,K,wLength)
% 
%
% estimator
%        Estimator object created using estimator_create( ) function
%
% K
%        number of subsamples in the slow time series (default: 2)
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
% variance_tsrvRolling(estimatorExample,2,23400)
function [ result ] = variance_tsrvRolling( estimator,K,wLength )
     result=estimator_metric(estimator,'metric','Rol_TSRV','wLength',int16(wLength),'numSubsamples',int16(K));
end

