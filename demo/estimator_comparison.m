data_spy=importdata('data_spy.mat');

estimator=estimator_create('priceData',data_spy);

rv = variance_rvRolling(estimator,500);                                                                
tsrv = variance_tsrvRolling(estimator,2,500);                                                    
msrv = variance_msrvRolling(estimator,3,2,500);                                                        
mrv = variance_mrvRolling(estimator,500);                                                                
krv1 = variance_krvRolling(estimator,'ParzenKernel',1,500);                              
krv2 = variance_krvRolling(estimator,'EpanichnikovKernel',1,500); 
jrmrv = variance_jrmrvRolling(estimator,500);


figure('position',[800 200 1000 700])
util_plot2d(rv,'RV','Title','Variance')+...
util_line2d(tsrv,'TSRV')+...
util_line2d(msrv,'MSRV')+...
util_line2d(mrv,'MRV')+...
util_line2d(krv1,'KRV, Parzen Kernel')+...
util_line2d(krv2,'KRV, Epanichnikov Kernel')+...
util_line2d(jrmrv,'JRMRV')