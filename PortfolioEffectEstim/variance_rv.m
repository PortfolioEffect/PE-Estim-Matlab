% Realized Variance
%
% 
% Realized Variance (RV) is the sum of squared returns. For instance the RV can be 
% the sum of squared daily returns for a particular month, which would yield a measure 
% of price variation over this month. This variance estimator does not account for market microstructure effects.
% 
% Usage
% 
% variance_rv(estimator)
% 
%
% estimator
%        Estimator object created using estimator_create( ) function
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
% variance_rv(estimatorExample)
function [ result ] = variance_rv( estimator )
     result=estimator_metric(estimator,'metric','RV');
end

