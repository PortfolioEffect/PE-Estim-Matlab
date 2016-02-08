% Kernel Realized Variance
%
% 
% Kernel Realized Variance (KRV) is an asymptotically consistent estimator of integrated volatility 
% based on the concept of realized kernels for dealing with additive microstructure noise.
% 
% Usage
% 
% variance_krv(estimator,kernelName,bandwidth)
% 
%
% estimator
%        Estimator object created using estimator_create( ) function
%
% kernelName
%        Kernel name is one of the following (default:"ParzenKernel"):
%           'BartlettKernel'
%           'EpanichnikovKernel'
%           'SecondOrderKernel'
%           'CubicKernel' 
%           'ParzenKernel'
%           'TukeyHanningKernel'	 
%           'TukeyHanningModifiedKernel'
%           'FifthOrderKernel'
%           'SixthOrderKernel'
%           'SeventhOrderKernel' 
%           'EighthOrderKernel' 	
%
% bandwidth
%        "optimal" to compute optimal bandwidth from the data, or the value of bandwidth (default:1)
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
% variance_krv(estimatorExample,'ParzenKernel',1)
function [ result ] = variance_krv( estimator,kernelName, bandwidth)
switch kernelName
    case 'BartlettKernel'
        kernelName='BARTLETT';
    case 'CubicKernel'
        kernelName='CUBIC';
    case 'EighthOrderKernel'
        kernelName='EIGHTH_ORDER';
    case 'EpanichnikovKernel'
        kernelName='EPANECHNIKOV';
    case 'FifthOrderKernel'
        kernelName='FIFTH_ORDER';
    case 'ParzenKernel'
        kernelName='PARZEN';
    case 'SecondOrderKernel'
        kernelName='SECOND_ORDER';
    case 'SeventhOrderKernel'
        kernelName='SEVENTH_ORDER';
    case 'SixthOrderKernel'
        kernelName='SIXTH_ORDER';    
    case 'TukeyHanningKernel'
        kernelName='TUKEY_HANNING';
    case 'TukeyHanningModifiedKernel'
        kernelName='TUKEY_HANNING_MOD';
    otherwise
        error('Kernel not supported');
end
     result=estimator_metric(estimator,'metric','KRV','kernelTypeName',kernelName,'bandwidth',int16(bandwidth));
end

