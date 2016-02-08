% Modulated Tripower Quarticity
%
% 
% Modulated Tri-power Quarticity (MTQ) is an asymptotically unbiased estimator 
% of integrated quarticity in the presence of microstructure noise. This estimator is 
% also robust to finite activity jumps in price.
% 
% Usage
% 
% quarticity_mtq(estimator)
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
% quarticity_mtq(estimatorExample)
function [ result ] = quarticity_mtq( estimator )
     result=estimator_metric(estimator,'metric','MTQ');
end

