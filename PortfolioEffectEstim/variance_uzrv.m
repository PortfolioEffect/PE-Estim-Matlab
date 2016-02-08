% Uncertainty Zones Realized Variance
%
% 
% Uncertainty Zones Realized Variance (UZRV) is an integrated variance estimator that 
% accounts for stochastic rounding noise like bid-ask bounce effects. 
% 
% 
% Usage
% 
% variance_uzrv(estimator)
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
% variance_uzrv(estimatorExample)
function [ result ] = variance_uzrv( estimator )
     result=estimator_metric(estimator,'metric','UZRV');

end

