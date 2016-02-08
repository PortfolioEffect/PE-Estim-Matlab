% Autocovariance Noise Variance
%
% 
% Autocovariance Noise Variance (ACNV) estimates the noise variance based on the autocovariance of returns, 
% rather than the Rescaled Noise Variance (RNV). It is generally preferred to RNV as it leads to a reduction in MSE 
% and is robust to the presence of rare jumps. Also, this approach can be extended straightforwardly to estimate the 
% parameters of higher order noise dependence.
% 
% Usage
% 
% noise_acnv(estimator)
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
% noise_acnv(estimatorExample)
function [ result ] = noise_acnv( estimator )
     result=estimator_metric(estimator,'metric','ACNV');
end

