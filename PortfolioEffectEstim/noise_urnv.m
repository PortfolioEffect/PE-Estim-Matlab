% Unbiased Rescaled Noise Variance
%
% 
% Unbiased Rescaled Noise Variance (URNV) corrects for a bias of Rescaled Noise Variance.
% 
% Usage
% 
% noise_urnv(estimator)
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
% noise_urnv(estimatorExample)
function [ result ] = noise_urnv( estimator )
     result=estimator_metric(estimator,'metric','URNV');
end

