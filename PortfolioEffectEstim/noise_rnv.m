% Rescaled Noise Variance
%
% 
% Rescaled Noise Variance (RNV) is an asymptotically consistent estimator of noise volatility when 
% daling with additive microstructure noise. It is derived based on Realized Variance property of convergence
%  to noise variance wih the increase of sampling frequency.
% 
% Usage
% 
% noise_rnv(estimator)
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
% noise_rnv(estimatorExample)
function [ result ] = noise_rnv( estimator )
     result=estimator_metric(estimator,'metric','RNV');
end

