% Noise to Signal Ratio
%
% 
% Noise to Signal Ratio is a measure that compares the level of  noise to the level of a desired signal.
% 
% Usage
% 
% noise_nts(estimator)
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
% noise_nts(estimatorExample)
function [ result ] = noise_nts( estimator )
     result=estimator_metric(estimator,'metric','NTS');
end

