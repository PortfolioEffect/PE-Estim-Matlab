% Uncertainty Zones Noise Variance
%
% 
% Uncertainty Zones Noise Variance (UZNV) based on the concept of uncertainty zones.
% 
% Usage
% 
% noise_uznv(estimator)
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
% noise_uznv(estimatorExample)
function [ result ] = noise_uznv( estimator )
     result=estimator_metric(estimator,'metric','UZNV');

end

