%% 初始化作业空间、创建障碍物信息并可视化

% 清除环境变量，初始化
clear; clc;

% 定义工作空间的起始点和大小
axisStart = [-50 -50 -50];
axisLWH = [100 100 100];

%定义障碍物
cubeInfo.exist = 0;
cylinderInfo.exist = 0;
sphereInfo.exist = 0;

% 初始化障碍物信息
cubeInfo = createCubeObject(cubeInfo);       %创建长方体障碍物信息
cylinderInfo = createCylinderObject(cylinderInfo);  %创建圆柱障碍物信息
sphereInfo = createSphereObject(sphereInfo);    %创建球形障碍物信息

% 读取整个文件到变量pathPoint中、去除第一列
pathPoint = readmatrix("xyz.txt");
pathPoint = pathPoint(:, 2:end);

%% 画图
figure(1)
colorMatCube = [1 0 0];
colorMatCylinder = [0 1 0];
colorMatSphere = [0 0 1];
pellucidity = 0.6;    %透明度
hold on;
scatter3(pathPoint(1,1),pathPoint(1,2),pathPoint(1,3),'MarkerEdgeColor','k','MarkerFaceColor',[1 0 0]);
scatter3(pathPoint(end,1),pathPoint(end,2),pathPoint(end,3),'MarkerEdgeColor','k','MarkerFaceColor','b');

for k1 = 1 : length(pathPoint)
    scatter3(pathPoint(k1,1),pathPoint(k1,2),pathPoint(k1,3),'MarkerEdgeColor','k','MarkerFaceColor','black');
    % text(pathPoint(k1,1),pathPoint(k1,2),pathPoint(k1,3),num2str(k1),'Color', 'red');

end

drawCubeObject(cubeInfo,colorMatCube,pellucidity);     %画长方体障碍物
drawCylinderObject(cylinderInfo,colorMatCylinder,pellucidity);   %画圆柱体障碍物
drawSphereObject(sphereInfo,colorMatSphere,pellucidity);  %画球形障碍物

% text(pathPoint(1,1),pathPoint(1,2),pathPoint(1,3),'起点');
% text(pathPoint(end,1),pathPoint(end,2),pathPoint(end,3),'终点');
view(3)
grid on;
axis equal;
axis([-25 25 -5 40 -5 20])
xlabel('x') 
ylabel('y')
zlabel('z')


%% 迭代前置操作

%计算初始状态下各点之间欧氏距离
calculate_distances();
% 
% 创建lkh配置文件
create_tsp_file();

% 先跑一遍lkh
min = run_lkh();
% 
% 对路径重新排序
tour_order = reorder_xyz();
% data = readmatrix('xyz.txt');
% % 提取第一列
% tour_order = data(:, 1);


%% 开始迭代

step = 0.5;  %步长

% optimized_path = current_path;

current_path = readmatrix("reordered_xyz.txt");
while true
    updated = false;
    totalPath = [];
    for k1 = 1:size(current_path,1) - 1
        startPoint = current_path(k1,:);
        goalPoint = current_path(k1 + 1,:);

        cubeFlag = new_isCubeCollision(cubeInfo,startPoint,goalPoint,step);   %长方体碰撞检测函数
        cylinderFlag = isCylinderCollision(cylinderInfo,startPoint,goalPoint,step);  %圆柱体碰撞检测函数
        sphereFlag = isSphereCollision(sphereInfo,startPoint,goalPoint,step);   %球形障碍物碰撞检测函数
        is_collision = cubeFlag || cylinderFlag || sphereFlag;

        if is_collision
            [Path, pathLength] = RRT(startPoint, axisStart, axisLWH, goalPoint, cubeInfo, cylinderInfo, sphereInfo);
            if ~isempty(Path)
                % 如果路径非空，确保路径以正确的起始点开始
                if ~isequal(Path(1,:), startPoint)
                    Path = flipud(Path);  % 如果路径的起点不是期望的起点，则翻转路径
                end
                totalPath = [totalPath; Path]; % 添加路径到总路径中
                fprintf('添加了新路径，长度为 %d.\n', size(Path, 1)); % 打印路径添加信息
            
                % 更新路径点和路径长度
                update_distance(k1, pathLength, 'tour_order.txt', 'distances.txt');
                create_tsp_file();  % 重新生成 TSP 文件
                value = run_lkh();  % 运行 LKH 算法
                new_tour_order = reorder_xyz();  % 重新排序路径点
                current_path = readmatrix("reordered_xyz.txt");
                if ~isequal(value, min)
                    min = value;
                    updated = true;
                    totalPath = [];
                end
            end
            
        else
            totalPath = [totalPath;startPoint];    
        end
    end

    if ~updated
        break;
    end
end

totalPath = unique(totalPath, 'rows', 'stable');

if ~isempty(totalPath)
    for k2 = 1:size(totalPath,1)-1
        line([totalPath(k2,1) totalPath(k2+1,1)],[totalPath(k2,2) totalPath(k2+1,2)],[totalPath(k2,3) totalPath(k2+1,3)],'LineWidth',1,'Color','b');
    end
end

% plot3(totalPath(:,1), totalPath(:,2), totalPath(:,3), '-', 'LineWidth', 2);

