% Get Asset Price
%
% 
% Method returns active list of settings of a given estimator.
%  
% 
% Usage
% 
% price(estimator)
% 
%
% estimator
%        Estimator object created using estimator_create( ) function
%
% Return Value
% 
% numeric vector of prices.
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
% price(estimatorExample)
function [ price ] = price( estimator )
     price=estimator_metric(estimator,'metric','PRICE');
end

