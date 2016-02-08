% Creates new estimator
%
%
% Creates new empty estimator object.
%
% Usage
%
% estimator_create(asset, fromTime, toTime)
% estimator_create(priceData)
%
% asset
%     Unique identifier of the instrument
% fromTime
%     Start of market data interval in "yyyy-MM-dd hh:mm:ss" format when internal market data is used.
%    Offset from last available date/time by N days is denoted as "t-N" (e.g. "t-7" denotes offset by 7 days).
% toTime
%     End of market data interval in "yyyy-MM-dd hh:mm:ss" format when internal market data is used.
%    Offset from last available date/time by N days is denoted as "t-N" (e.g. "t-7" denotes offset by 7 days).
% priceData
%     Vector of (time, price) observations for asset when external market data is used.
%
% Return Value
%
% estimator object
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
% data_spy=importdata('data_spy.mat');
% estimatorExample=estimator_create('priceData',data_spy);
% variance_rv(estimatorExample)
%
% estimatorExample=estimator_create('asset','AAPL','fromTime','2014-09-10 09:30:01','toTime','2014-09-14 16:00:00');
% variance_rv(estimatorExample)
%
% estimatorExample=estimator_create('asset','AAPL','fromTime','t-7','toTime','t');
% variance_rv(estimatorExample)
function [ estimator ] = estimator_create( varargin )

global clientConnection
if ~util_validateConnection()
    return;
end

p = inputParser;
defaultAsset = true;
defaultFromTime = true;
defaultToTime = true;
defaultPriceData = true;

addParamValue(p,'asset',defaultAsset,@ischar);
addParamValue(p,'fromTime',defaultFromTime,@ischar);
addParamValue(p,'toTime',defaultToTime,@ischar);
addParamValue(p,'priceData',defaultPriceData,@isnumeric);

parse(p,varargin{:});
estimator=estimatorContainer();
estimator_create=com.portfolioeffect.quant.client.portfolio.Estimator(clientConnection);
if ischar(p.Results.asset) &&ischar(p.Results.fromTime) && ischar(p.Results.toTime) && p.Results.priceData
    Results=estimator_create.setFromTime(p.Results.fromTime);
    if Results.hasError()
        disp(Results.getErrorMessage())
        error(char(Results.getErrorMessage()));
    end
    Results=estimator_create.setToTime(p.Results.toTime);
    if Results.hasError()
        disp(Results.getErrorMessage())
        error(char(Results.getErrorMessage()));
    end
    Results=estimator_create.addAsset(p.Results.asset);
elseif p.Results.fromTime && p.Results.toTime && isnumeric(p.Results.priceData)
    data=p.Results.priceData;
    Results=estimator_create.addAsset(double(data(:,2)),int64(data(:,1)));
end
if Results.hasError()
    msgbox(char(Results.getErrorMessage()));
    error(char(Results.getErrorMessage()));
end
estimator.java=estimator_create;
estimator_defaultSettings( estimator )
end

