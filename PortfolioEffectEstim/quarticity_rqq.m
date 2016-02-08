% Realized Quadpower Quarticity
%
% 
% Realized Quadpower Quarticity (RQQ) is an asymptotically unbiased estimator of integrated quarticity in the absence of microstructure noise.
% 
% Usage
% 
% quarticity_rqq(estimator)
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
% quarticity_rqq(estimatorExample)
function [ result ] = quarticity_rqq( estimator )
     result=estimator_metric(estimator,'metric','RQQ');
end

