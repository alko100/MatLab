x = 1.0e+06 .*[3.0138, 3.1345, 3.7675, 4.7347,6.1352];
y = 1.0e+07 .*[-1.8160,-1.8244,-1.8326,-1.8232,-1.7877];
z = 1.0e+07 .*[0.9917,0.9980,1.0119,1.0218,1.0261];
r =[ 0,0,0.0046,0.0046,0.0046];
p =[ 89.9900,26.6402,22.4665,16.0608,3.6879];
y =[86.7370,86.7370,86.7810,86.7810,86.7810];
t =[0,95,186,282,380];


data = [x',y',z',r',p',y',t'];
% data_ts = timeseries(data,t);
h=Aero.Animation;
f=figure;
h.Figure=f;
h.initialize();
h.FramesPerSecond=10
h.TimeScaling = 5;
% path = "C:\Program Files\MATLAB\R2019a\toolbox\aero\astdemos\SpaceShuttle\Models\shuttle_o2.ac";
path = "C:\Program Files\MATLAB\R2019a\toolbox\aero\astdemos\SpaceShuttle\Models\shuttle_o2-damage.ac";
idx1=h.createBody(path,'ac');
h.show()
h.bodies{1}.TimeseriesSourceType='Array6DoF';
h.bodies{1}.timeseriesSource=data;
h.Camera.offset=[-150 -150 0];
h.show()
h.VideoRecord = 'on';
h.VideoQuality = 50;
h.VideoCompression = 'Motion JPEG AVI'
h.VideoFilename = 'rocket trajectory';
h.play()
h.VideoRecord='off';