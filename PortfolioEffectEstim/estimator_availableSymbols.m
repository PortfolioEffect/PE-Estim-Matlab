% Estimator Available Symbols
%
% 
% Get All Symbol List
% 
% Usage
% 
% estimator_availableSymbols(estimator)
% 
%
% estimator
%        Estimator object created using estimator_create( ) function
%
% Return Value
% 
% dataset with VarNames ( 'id','description','exchange')
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
% availableSymbols=estimator_availableSymbols(estimatorExample);
% availableSymbols.id
function [ result ] = estimator_availableSymbols( estimator )
	data=estimator.java.getAllSymbolsList;
	   dataNames=data.getDataNames();
       result=dataset();
                for i = 1:length(dataNames)
dataName=char(dataNames(i));
result.Var=char(data.getStringArray(dataName));
result.Properties.VarNames{i} = dataName;
end
end

