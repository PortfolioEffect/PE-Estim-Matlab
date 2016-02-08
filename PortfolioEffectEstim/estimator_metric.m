function [ result ] = estimator_metric(  estimator,varargin )
if ~util_validateConnection()
    return;
end
len=length(varargin);
data=struct();
if(len==0) return; end
i=1;
while(i<=len)
    if(isstruct(varargin{i}))
        data=mergestruct(data,varargin{i});
    elseif(ischar(varargin{i}) && i<len)
        data.(varargin{i})=varargin{i+1};
        i=i+1;
    else
        error('input must be in the form of ...,''name'',value,... pairs or structs');
    end
    i=i+1;
end
% result=data;
resultTemp=estimator.java.getMetric(util_toJSONString(data));
result=util_getResult(resultTemp);
end

