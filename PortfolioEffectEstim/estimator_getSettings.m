% Get Estimator Settings
%
% 
% Method returns active list of settings of a given estimator.
% 
% Usage
% 
% estimator_getSettings(estimator)
% 
%
% estimator
%        Estimator object created using estimator_create( ) function
%
% Return Value
% 
% List with estimator settings.
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
% estimator_getSettings(estimatorExample)
function [ result ] = estimator_getSettings( estimator )
result=struct('jumpsModel',char(estimator.java.getParam('jumpsModel')),...
'resultsSamplingInterval',char(estimator.java.getParam('samplingInterval')),...
'inputSamplingInterval',char(estimator.java.getParam('priceSamplingInterval')));
end

