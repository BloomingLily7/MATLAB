function [Path, pathLength] = RRT(startPoint, axisStart, axisLWH, goalPoint, cubeInfo, cylinderInfo, sphereInfo)
%% RRT算法寻找路径点

%% 变量定义
calcuDis = @(x,y) sqrt((x(1)-y(1))^2 + (x(2)-y(2))^2 + (x(3)-y(3))^2); 
iterMax = 20000;   % 最大迭代次数
iter = 0;   % 当前迭代次数
step = 0.5;  % 步长
count = 1;  % 计数器
Thr = 0.5;   % 阈值
pathLength = 0; % 初始化路径长度为0

% 构建树
T.x(1) = startPoint(1);
T.y(1) = startPoint(2);
T.z(1) = startPoint(3);
T.pre(1) = 0;

while iter < iterMax

    if iter > 10000
        step = 2.5;
    end

    iter = iter + 1;

    %% 在空间中随机采样
    randCoor = samplePoint(axisStart, axisLWH, goalPoint);

    %% 寻找树上最近点
    [nearCoor, preIndex] = findNearPoint(randCoor, T);

    %% 按照指定步长生成新的扩展点
    newCoor = expandPoint(nearCoor, randCoor, step);

    %% 碰撞检测
    cubeFlag = isCubeCollision(cubeInfo, nearCoor, newCoor, step);  
    cylinderFlag = isCylinderCollision(cylinderInfo, nearCoor, newCoor, step); 
    sphereFlag = isSphereCollision(sphereInfo, nearCoor, newCoor, step);  

    if cubeFlag || cylinderFlag || sphereFlag
        continue;
    end

    %% 将新点插入树中
    count = count + 1;
    T.x(count) = newCoor(1);
    T.y(count) = newCoor(2);
    T.z(count) = newCoor(3);
    T.pre(count) = preIndex;
    pathLength = pathLength + calcuDis(nearCoor, newCoor); % 更新路径长度

    if calcuDis(newCoor, goalPoint) < Thr
        break;
    end

end

if iter == iterMax
    Path = [];
    pathLength = 0; % 无路径时路径长度为0
    disp('路径规划失败');
    return;
end

%% 寻找路径
index = T.pre(end);
count = 1;

%将初始点添加到Path中
Path(count,1) = startPoint(1);
Path(count,2) = startPoint(2);
Path(count,3) = startPoint(3);

while T.pre(index)~=0
    count = count+1;
    Path(count,1) = T.x(index);
    Path(count,2) = T.y(index);
    Path(count,3) = T.z(index);
    index = T.pre(index);
    
end

%将目标点添加到Path中
Path = flipud(Path);
count = count+1;
Path(count,1) = goalPoint(1);
Path(count,2) = goalPoint(2);
Path(count,3) = goalPoint(3);
end
