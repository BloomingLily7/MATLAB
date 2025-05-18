function  cylinderInfo = createCylinderObject(cylinderInfo)

%舱室
% cylinderInfo.X = [25];
% cylinderInfo.Y = [25];
% cylinderInfo.Z = [0];
% cylinderInfo.radius = [2.5];
% cylinderInfo.height = [30];

% cylinderInfo.X = [0];
% cylinderInfo.Y = [3.8544];
% cylinderInfo.Z = [3.05];
% cylinderInfo.radius = [2];
% cylinderInfo.height = [20.5326];

cylinderInfo.X = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
cylinderInfo.Y = [3 16 19 23 23.5 24 24.5 25 25.5 26 26.5 27 27.5 28 28.5 29 29.5 30 30.5 31 31.5 32 32.5 33];
cylinderInfo.Z = [3.1 3.3 2.8 3.1 3.2 3.3 3.3 3.4 3.6 3.6 3.6 3.6 3.6 3.6 3.6 3.6 3.6 3.6 3.6 3.7 3.8 3.9 4.0 4.3];
cylinderInfo.radius = [3 3.2 3.2 3 2.9 2.9 2.9 2.9 2.9 2.8 2.7 2.6 2.5 2.4 2.3 2.2 2.1 2.0 1.9 1.8 1.7 1.6 1.5 1];
cylinderInfo.height = [20 0.7 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5];

cylinderInfo.X = [cylinderInfo.X 0 0 0 0 0 0 0 0];
cylinderInfo.Y = [cylinderInfo.Y 2.5 2 1.5 1 0.5 0 -0.5 -1.05];
cylinderInfo.Z = [cylinderInfo.Z 3 2.9 2.8 2.8 2.6 2.6 2.6 2.6];
cylinderInfo.radius = [cylinderInfo.radius 2.6 2.5 2.4 2.2 1.9 1.7 1.45 1.1];
cylinderInfo.height = [cylinderInfo.height 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.55];


%发动机
% cylinderInfo.X = [cylinderInfo.X 30.1 20];
% cylinderInfo.Y = [cylinderInfo.Y 26.6 26.6];
% cylinderInfo.Z = [cylinderInfo.Z 19.2 19.2];
% cylinderInfo.radius = [cylinderInfo.radius 1.2 1.2];
% cylinderInfo.height = [cylinderInfo.height 3.2 3.2];

cylinderInfo.X = [cylinderInfo.X 5 5 5 5 5];
cylinderInfo.Y = [cylinderInfo.Y 11 10.5 10 14 14.5];
cylinderInfo.Z = [cylinderInfo.Z 1.3 1.4 1.4 1.4 1.4];
cylinderInfo.radius = [cylinderInfo.radius 2.15 2.15 1.8 2 1.8];
cylinderInfo.height = [cylinderInfo.height 3 0.5 0.5 0.5 0.5];

cylinderInfo.X = [cylinderInfo.X -5 -5 -5 -5 -5];
cylinderInfo.Y = [cylinderInfo.Y 11 10.5 10 14 14.5];
cylinderInfo.Z = [cylinderInfo.Z 1.3 1.4 1.4 1.4 1.4];
cylinderInfo.radius = [cylinderInfo.radius 2.15 2.15 1.8 2 1.8];
cylinderInfo.height = [cylinderInfo.height 3 0.5 0.5 0.5 0.5];


%障碍物
% cylinderInfo.X = [cylinderInfo.X 5 25 5];
% cylinderInfo.Y = [cylinderInfo.Y 40 5 20];
% cylinderInfo.Z = [cylinderInfo.Z 0 0 0];
% cylinderInfo.radius = [cylinderInfo.radius 5 2.5 3];
% cylinderInfo.height = [cylinderInfo.height 10 7 11];

% cylinderInfo.radius=cylinderInfo.radius+1;
% cylinderInfo.height=cylinderInfo.height+1;

cylinderInfo.exist = 1;

end

