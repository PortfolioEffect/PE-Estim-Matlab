% Multiple Scales Realized Variance
%
% 
% Multiple Series Realized Variance (MSRV) is a generalization of the TSRV estimator 
% of integrated volatility. It uses multiple time scales to account for the effects of additive 
% market microstructure noise.
%  
% 
% Usage
% 
% variance_msrv(estimator,K,J)
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
% variance_msrv(estimatorExample,2,1)
function [ result ] = variance_msrv( estimator,K,J)
     result=estimator_metric(estimator,'metric','MSRV','K',int16(K),'J',int16(J));
end

