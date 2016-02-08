% Estimator Settings
% 
% 
% Usage
% 
% estimator_settings(estimator,jumpModel, resultsSamplingInterval,inputSamplingInterval)
% 
% estimator
%     Estimator object created using estimator_create( ) function
%
% jumpsModel
%	Used to select jump filtering mode when computing return statistics. Available modes are: 'none' - 
% price jumps are not filtered anywhere, 'moments' - price jumps are filtered only when computing return 
% moments (i.e. for expected return, variance, skewness, kurtosis and derived metrics). Defaults to 'moments', which implies that 
% only return moments and related metrics would be using jump-filtered returns in their calculations.
%
% resultsSamplingInterval
%     Interval to be used for sampling computed results before returning them to the caller. Available interval 
% values are: 'Xs' - seconds, 'Xm' - minutes, 'Xh' - hours, 'Xd' - trading days (6.5 hours in a trading day), 
% 'Xw' - weeks (5 trading days in 1 week), 'Xmo' - month (21 trading day in 1 month), 'Xy' - years (256 trading days in 1 year), 
% 'last' - latest value in a series is returned, 'none' - no sampling. Large sampling interval would produce smaller vector of results 
% and would require less time spent on data transfer. Default value of '1s' indicates that data is returned for every second during trading hours.
%  
% inputSamplingInterval
%	  Interval to be used as a minimum step for sampling input prices. Available interval values are: 'Xs' - seconds, 
% 'Xm' - minutes, 'Xh' - hours, 'Xd' - trading days (6.5 hours in a trading day), 'Xw' - weeks (5 trading days in 1 week), 
% 'Xmo' - month (21 trading day in 1 month), 'Xy' - years (256 trading days in 1 year), 'none' - no sampling. Default value 
% is 'none', which indicates that no sampling is applied.
%	 
% Return Value
% 
% Void
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
% estimator_settings(estimatorExample, 'inputSamplingInterval', '10s','resultsSamplingInterval','10s')
% variance_rv(estimatorExample)
function estimator_settings(estimator,varargin)
if ~util_validateConnection()
    return;
end
if isstruct(varargin{1})
    p=varargin{1};
else
   p=struct(varargin{:});
end
   names=fieldnames(p);
   for i = 1:length(names)
    name=char(names(i));
         switch name
   case 'jumpsModel'
       estimator.java.setParam('jumpsModel',p.jumpsModel);
   case 'resultsSamplingInterval'
       estimator.java.setParam('samplingInterval',p.resultsSamplingInterval);  
   case 'inputSamplingInterval'
       estimator.java.setParam('priceSamplingInterval',p.inputSamplingInterval);   
           otherwise
        error('Wront setting name');
         end
   end
end

