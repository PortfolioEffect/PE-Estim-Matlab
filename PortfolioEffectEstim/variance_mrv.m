% Modulated Realized Variance
%
% 
% Modulated Realized Variance (MRV) is an integrated variance estimator introduced by 
% Podolskij and Vetter. It is based on the concept of multipower variation and assumes 
% additive noise structure.
% 
% 
% Usage
% 
% variance_mrv(estimator)
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
% variance_mrv(estimatorExample)
function [ result ] = variance_mrv( estimator )
     result=estimator_metric(estimator,'metric','MRV');
end

