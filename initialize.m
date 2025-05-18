function initialize(axisStart,axisLWH,cubeInfo,cylinderInfo,sphereInfo)

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

end



