function sphereInfo = createSphereObject(sphereInfo)

%机头
% sphereInfo.centerX = [25];
% sphereInfo.centerY = [25];
% sphereInfo.centerZ = [32];
% sphereInfo.radius = [2];


%滚轮
% sphereInfo.centerX = [sphereInfo.centerX 25 27.8 22.2];
% sphereInfo.centerY = [sphereInfo.centerY 27.8 27.3 27.3];
% sphereInfo.centerZ = [sphereInfo.centerZ 29.5 17 17];
% sphereInfo.radius = [sphereInfo.radius 0.8 1.1 1.1];

sphereInfo.centerX = [0];
sphereInfo.centerY = [4.1];
sphereInfo.centerZ = [0.35];
sphereInfo.radius = [0.42];

sphereInfo.centerX = [sphereInfo.centerX 2.7];
sphereInfo.centerY = [sphereInfo.centerY 16.7];
sphereInfo.centerZ = [sphereInfo.centerZ 0.5];
sphereInfo.radius = [sphereInfo.radius 0.6];

sphereInfo.centerX = [sphereInfo.centerX -2.7];
sphereInfo.centerY = [sphereInfo.centerY 16.7];
sphereInfo.centerZ = [sphereInfo.centerZ 0.5];
sphereInfo.radius = [sphereInfo.radius 0.6];

%障碍物
% sphereInfo.centerX = [sphereInfo.centerX 40 40 40 10 10 25 25 25 10 40 35 40 12 29];
% sphereInfo.centerY = [sphereInfo.centerY 10 40 10 40 10 15 35 35 25 35 45 30 15 38];
% sphereInfo.centerZ = [sphereInfo.centerZ 5 40 40 40 40 35 3 20 20 22 25 42 6 40];
% sphereInfo.radius = [sphereInfo.radius 3 4 3 5 3 3 3 3 2 2 3 1 2 2];

sphereInfo.centerX = [sphereInfo.centerX -10 10 -12.5 12.5];
sphereInfo.centerY = [sphereInfo.centerY 5 5 22.5 22.5];
sphereInfo.centerZ = [sphereInfo.centerZ 5 5 9.5 9.5];
sphereInfo.radius = [sphereInfo.radius 3 3 2.5 2.5];

 sphereInfo.radius=sphereInfo.radius+1;

sphereInfo.exist = 1;


end

