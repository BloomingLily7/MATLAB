function cubeFlag = new_isCubeCollision(cubeInfo, startPoint, goalPoint, step)
%% 长方体碰撞检测函数，如果发生碰撞则返回1

cubeFlag = 0;

if cubeInfo.exist
    deltaX = goalPoint(1) - startPoint(1);
    deltaY = goalPoint(2) - startPoint(2);
    deltaZ = goalPoint(3) - startPoint(3);

    r = sqrt(deltaX^2 + deltaY^2 + deltaZ^2);

    for k2 = 0 : step : r
        fai = atan2(deltaY, deltaX);
        theta = acos(deltaZ / r);

        x = k2 * sin(theta) * cos(fai) + startPoint(1);
        y = k2 * sin(theta) * sin(fai) + startPoint(2);
        z = k2 * cos(theta) + startPoint(3);
        
        checkPoint = [x, y, z];

        for k1 = 1:size(cubeInfo.axisX, 2)
            xMin = cubeInfo.axisX(k1);
            xMax = cubeInfo.axisX(k1) + cubeInfo.length(k1);
            yMin = cubeInfo.axisY(k1);
            yMax = cubeInfo.axisY(k1) + cubeInfo.width(k1);
            zMin = cubeInfo.axisZ(k1);
            zMax = cubeInfo.axisZ(k1) + cubeInfo.height(k1);
            
            if (xMin < x && x < xMax) && (yMin < y && y < yMax) && (zMin < z && z < zMax)
                cubeFlag = 1;
                return;
            end
        end
    end
end
end





