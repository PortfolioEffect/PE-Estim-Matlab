% Two Scales Realized Variance
%
% 
% Two Scale Realized Variance (TSRV) estimates integrated volatility consistently. 
% The idea is to use realized variance type estimators over two time scales to correct 
% the effect of additive market microstructure noise.
%  
% 
% Usage
% 
% variance_tsrv(estimator,K)
% 
%
% estimator
%        Estimator object created using estimator_create( ) function
%
% K
%        number of subsamples in the slow time series (default: 2)
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
% variance_tsrv(estimatorExample,2)
function [ result ] = variance_tsrv( estimator,K )
     result=estimator_metric(estimator,'metric','TSRV','numSubsamples',int16(K));
end

