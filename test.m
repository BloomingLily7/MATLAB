% 定义长方体信息，这里我们创建一个简单的长方体
cubeInfo.exist = true;
cubeInfo.axisX = [0]; % 长方体的X轴起点
cubeInfo.length = [5]; % 长方体的长度
cubeInfo.axisY = [0]; % 长方体的Y轴起点
cubeInfo.width = [5]; % 长方体的宽度
cubeInfo.axisZ = [0]; % 长方体的Z轴起点
cubeInfo.height = [5]; % 长方体的高度

% 测试用例1：应该发生碰撞
% 起点和终点通过长方体
startPoint1 = [2, 2, 0];
goalPoint1 = [6, 2, 5];
step = 0.1; % 小步长以增加检测精度

% 测试用例2：不应发生碰撞
% 起点和终点避开长方体
startPoint2 = [6, 6, 6];
goalPoint2 = [7, 7, 7];

% 调用碰撞检测函数
collision1 = new_isCubeCollision(cubeInfo, startPoint1, goalPoint1, step);
collision2 = new_isCubeCollision(cubeInfo, startPoint2, goalPoint2, step);

% 打印结果
fprintf('测试用例1（应碰撞）: %d\n', collision1);
fprintf('测试用例2（不应碰撞）: %d\n', collision2);
