function  cubeInfo = createCubeObject(cubeInfo)

%cubeInfo.axisX = [27 27 27 27 10 14 17 20 27 27 27 27 27 18 19 20 21 22 25 25 25 25 25 25 25 25 25 25 25];
%cubeInfo.axisY = [25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 17 21 18 19 20 21.3 21.6 21.9 22.2 22.5 22.8];
%cubeInfo.axisZ = [13 14.5 16 17.5 13 14.5 16 17.5 0 2 2.5 3 3.5 0 2 2.5 3 3.5 0 2 2 3 4 5 5.5 6 6.5 7 7.5];
%cubeInfo.length = [13 9 6 3 13 9 6 3 5 4 3 2 1 5 4 3 2 1 0.4 0.4 0.4 0.4 0.4 0.4 0.4 0.4 0.4 0.4 0.4];
%cubeInfo.width = [0.7 0.7 0.7 0.7 0.7 0.7 0.7 0.7 0.3 0.3 0.3 0.3 0.3 0.3 0.3 0.3 0.3 0.3 6 2 3 2 1 1.7 1.4 1.1 0.8 0.5 0.2];
%cubeInfo.height = [1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 2 0.5 0.5 0.5 0.5 2 0.5 0.5 0.5 0.5 2 3 1 1 1 0.5 0.5 0.5 0.5 0.5 0.5 0.5];

%机翼右
% cubeInfo.axisX=[27 27 27 27 33 36 27];
% cubeInfo.axisY=[24.6 24.6 24.6 24.6 24.6 24.6 24.6];
% cubeInfo.axisZ=[14.5 16 17.5 19 13.5 12.5 20.5];
% cubeInfo.length=[10 9 6 3 6.3 3.5 1];
% cubeInfo.width=[1.5 1.5 1.5 1.5 1.5 1.5 1.5];
% cubeInfo.height=[1.5 1.5 1.5 1.5 1 1 1];

cubeInfo.axisX = [2.3 3.5 4.6 5.3 6.3 7.3 8.2 9.5 10.6 12 13.4 14.5];
cubeInfo.axisY = [11.6 12.5 12.2 14 14.3 14.6 15.2 15.9 16.5 17.2 18 18.7];
cubeInfo.axisZ = [0.69 0.69 1.0 1.0 1.1 1.2 1.3 1.3 1.6 1.8 1.9 1.9];
cubeInfo.length = [1.2 1.2 0.7 1.5 1.0 1.0 1.3 1.1 1.4 1.4 1.1 0.6];
cubeInfo.width = [6.7 5.7 7.3 6 5.7 5.0 5.8 5 3.9 3.6 3 2.3];
cubeInfo.height = [2.9 2.9 2.6 2.7 2.7 2.6 2.6 2.8 2.6 2.4 2.4 2.4];



%机翼左
% cubeInfo.axisX=[cubeInfo.axisX 13 14 17 20 11 10.5 22];
% cubeInfo.axisY=[cubeInfo.axisY 24.6 24.6 24.6 24.6 24.6 24.6 24.6];
% cubeInfo.axisZ=[cubeInfo.axisZ 14.5 16 17.5 19 13.5 12.5 20.5];
% cubeInfo.length=[cubeInfo.length 13 9 6 3 6.3 3.5 1];
% cubeInfo.width=[cubeInfo.width 1.5 1.5 1.5 1.5 1.5 1.5 1.5];
% cubeInfo.height=[cubeInfo.height 1.5 1.5 1.5 1.5 1 1 1];

cubeInfo.axisX=[cubeInfo.axisX -3.5, -4.7, -5.3, -6.8, -7.3, -8.3, -9.5, -10.6, -12.0, -13.4, -14.5, -15.1];
cubeInfo.axisY=[cubeInfo.axisY 11.6 12.5 12.2 14 14.3 14.6 15.2 15.9 16.5 17.2 18 18.7];
cubeInfo.axisZ=[cubeInfo.axisZ 0.69 0.69 1.0 1.0 1.1 1.2 1.3 1.3 1.6 1.8 1.9 1.9];
cubeInfo.length=[cubeInfo.length 1.2 1.2 0.7 1.5 1.0 1.0 1.3 1.1 1.4 1.4 1.1 0.6];
cubeInfo.width=[cubeInfo.width 6.7 5.7 7.3 6 5.7 5.0 5.8 5 3.9 3.6 3 2.3];
cubeInfo.height=[cubeInfo.height 2.9 2.9 2.6 2.7 2.7 2.6 2.6 2.8 2.6 2.4 2.4 2.4];

%尾翼右
% cubeInfo.axisX=[cubeInfo.axisX 26.5 26.5 26.5 26.5 26.5];
% cubeInfo.axisY=[cubeInfo.axisY 23 23 23 23 23];
% cubeInfo.axisZ=[cubeInfo.axisZ 0 2 2.5 3 3.5];
% cubeInfo.length=[cubeInfo.length 5 4 3 2 1];
% cubeInfo.width=[cubeInfo.width 0.8 0.8 0.8 0.8 0.8];
% cubeInfo.height=[cubeInfo.height 2 0.5 0.5 0.5 0.5];

cubeInfo.axisX=[cubeInfo.axisX 1.1, 1.6, 2.1, 2.6, 3.1, 3.6, 4.1, 4.6, 5.1 5.6 6.1 6.6 4.0];
cubeInfo.axisY=[cubeInfo.axisY 28.5, 28.5, 28.5, 28.8, 29.1, 29.4, 29.7, 30.0, 30.3, 30.6, 30.9, 31.2 18.2];
cubeInfo.axisZ=[cubeInfo.axisZ 3.0, 3.0, 3.1, 3.2, 3.3, 3.4, 3.5, 3.6, 3.6, 3.7, 3.8, 3.9 1.1];
cubeInfo.length=[cubeInfo.length 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.3 0.6];
cubeInfo.width=[cubeInfo.width 4.0, 4.1, 4.3, 4.0, 3.8, 3.7, 3.6, 3.3, 3.2, 3.0, 2.8, 2.6 1.3];
cubeInfo.height=[cubeInfo.height 2.7, 2.6, 2.6, 2.5, 2.5, 2.5, 2.4, 2.4, 2.4, 2.3, 2.3, 2.2 2.1];

%尾翼左
% cubeInfo.axisX=[cubeInfo.axisX 18.5 19.5 20.5 21.5 22.5];
% cubeInfo.axisY=[cubeInfo.axisY 23 23 23 23 23];
% cubeInfo.axisZ=[cubeInfo.axisZ 0 2 2.5 3 3.5];
% cubeInfo.length=[cubeInfo.length 5 4 3 2 1];
% cubeInfo.width=[cubeInfo.width 0.8 0.8 0.8 0.8 0.8];
% cubeInfo.height=[cubeInfo.height 2 0.5 0.5 0.5 0.5];

cubeInfo.axisX=[cubeInfo.axisX -1.6, -2.1, -2.6, -3.1, -3.6, -4.1, -4.6, -5.1, -5.6, -6.1, -6.6, -6.9 -4.6];
cubeInfo.axisY=[cubeInfo.axisY 28.5, 28.5, 28.5, 28.8, 29.1, 29.4, 29.7, 30.0, 30.3, 30.6, 30.9, 31.2 18.2];
cubeInfo.axisZ=[cubeInfo.axisZ 3.0, 3.0, 3.1, 3.2, 3.3, 3.4, 3.5, 3.6, 3.6, 3.7, 3.8, 3.9 1.1];
cubeInfo.length=[cubeInfo.length 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.3 0.6];
cubeInfo.width=[cubeInfo.width 4.0, 4.1, 4.3, 4.0, 3.8, 3.7, 3.6, 3.3, 3.2, 3.0, 2.8, 2.6 1.3];
cubeInfo.height=[cubeInfo.height 2.7, 2.6, 2.6, 2.5, 2.5, 2.5, 2.4, 2.4, 2.4, 2.3, 2.3, 2.2 2.1];

%尾翼中
% cubeInfo.axisX=[cubeInfo.axisX 24.7 24.7 24.7 24.7 24.7 24.7 24.7 24.7 24.7 24.7 24.7];
% cubeInfo.axisY=[cubeInfo.axisY 17 21 18 19 20 21.3 21.6 21.9 22.2 22.5 22.8];
% cubeInfo.axisZ=[cubeInfo.axisZ 0 2 2 3 4 5 5.5 6 6.5 7 7.5];
% cubeInfo.length=[cubeInfo.length 0.8 0.8 0.8 0.8 0.8 0.8 0.8 0.8 0.8 0.8 0.8];
% cubeInfo.width=[cubeInfo.width 6 2 3 2 1 1.7 1.4 1.1 0.8 0.5 0.2];
% cubeInfo.height=[cubeInfo.height 3 1 1 1 0.5 0.5 0.5 0.5 0.5 0.5 0.5];

cubeInfo.axisX=[cubeInfo.axisX -1.3, -1.3, -1.3, -1.3, -1.3, -1.3, -1.3, -1.3, -1.3, -1.3, -1.3];
cubeInfo.axisY=[cubeInfo.axisY 23.3, 23.3, 25.7, 26.9, 27.1, 28.3, 28.5, 29.2, 29.9, 30.4, 31];
cubeInfo.axisZ=[cubeInfo.axisZ 5.5, 6.1, 6.7, 7.3, 7.9, 8.5, 9.1, 9.7, 10.3, 10.9, 11.5];
cubeInfo.length=[cubeInfo.length 2.6, 2.6, 2.6, 2.6, 2.6, 2.6, 2.6, 2.6, 2.7, 2.7, 2.7];
cubeInfo.width=[cubeInfo.width 9.5, 9.5, 7, 6, 6, 5, 5, 4.5, 3.7, 3, 2];
cubeInfo.height=[cubeInfo.height 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6];


%尾翼中
% cubeInfo.axisX=[cubeInfo.axisX 24.7 24.7 24.7 24.7 24.7 24.7 24.7 24.7 24.7];
% cubeInfo.axisY=[cubeInfo.axisY 17 17 17 18.5 19.5 20.5 21.5 22 22.2];
% cubeInfo.axisZ=[cubeInfo.axisZ 1.6 1 0 3.1 4.1 5.1 6.1 7.1 8.1];
% cubeInfo.length=[cubeInfo.length 0.8 0.8 0.8 0.8 0.8 0.8 0.8 0.8 0.8];
% cubeInfo.width=[cubeInfo.width 6 5 2.5 4.5 3.5 2.5 2 1.5 1];
% cubeInfo.height=[cubeInfo.height 1.5 0.6 1 1 1 1 1 1 2];


%障碍物
% cubeInfo.axisX=[cubeInfo.axisX 2 4 6 8 10 12 14 16 18 35 40 24 35 12 30 25 10 25 40 32 26 34 12 45 33];
% cubeInfo.axisY=[cubeInfo.axisY 2 4 6 8 10 12 14 16 18 15 30 1 12 35 40 20 10 13 40 34 44 23 25 33 33];
% cubeInfo.axisZ=[cubeInfo.axisZ 2 4 6 8 10 12 14 16 18 3 11 30 15 15 0 40 20 13 15 31 29 27 35 34 23];
% cubeInfo.length=[cubeInfo.length 1 1 1 1 1 1 1 1 1 3 10 5 8 6 10 8 5 4 7 2 1 1 2 3 1];
% cubeInfo.width=[cubeInfo.width 1 1 1 1 1 1 1 1 1 2 5 5 6 8 10 8 5 3 7 2 2 1 2 3 1];
% cubeInfo.height=[cubeInfo.height 1 1 1 1 1 1 1 1 1 3 5 5 7 7 10 8 5 4 7 2 2 1 2 3 1];

% cubeInfo.axisX=[cubeInfo.axisX 1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5];
% cubeInfo.axisY=[cubeInfo.axisY 3.8,5.5,6.9,8.1,9.5,10.8,11.9,13.1,14.5,15.6,17.3,18.4,19.6,20.7,22.2];
% cubeInfo.axisZ=[cubeInfo.axisZ 7.5,7.5,7.5,7.5,7.5,7.5,7.5,7.5,7.5,7.5,7.5,7.5,7.5,7.5,7.5,7.5];
% cubeInfo.length=[cubeInfo.length 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];
% cubeInfo.width=[cubeInfo.width 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];
% cubeInfo.height=[cubeInfo.height 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];

cubeInfo.axisX=[cubeInfo.axisX -25 -20 -15 -15 -20 20 15 5 10 17 -15 10];
cubeInfo.axisY=[cubeInfo.axisY -5 0 0 10 15 -5 0 0 10 15 25 25];
cubeInfo.axisZ=[cubeInfo.axisZ -5 -5 -5 -5 -5 -5 -5 -5 -5 -5 -5 -5];
cubeInfo.length=[cubeInfo.length 5 5 10 5 3 5 5 10 5 3 5 5];
cubeInfo.width=[cubeInfo.width 5 5 10 5 15 5 5 10 5 15 5 5];
cubeInfo.height=[cubeInfo.height 15 20 5 10 12 15 20 5 10 12 7 7];


% cubeInfo.axisX=cubeInfo.axisX-1;
% cubeInfo.axisY=cubeInfo.axisY-1;
% cubeInfo.axisZ=cubeInfo.axisZ-1;
% cubeInfo.length=cubeInfo.length+2;
% cubeInfo.width=cubeInfo.width+2;
% cubeInfo.height=cubeInfo.height+2;


cubeInfo.exist = 1;

end

