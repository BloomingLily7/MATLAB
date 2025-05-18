function cylinderFlag = isCylinderCollision(cylinderInfo,nearCoor,newCoor,step)
%% 圆柱体碰撞检测函数，当发生碰撞的时候返回1

cylinderFlag = 0;
% calcuDis = @(x,y)  sqrt((x(1)-y(1))^2+(x(2)-y(2))^2);
calcuDis = @(x,z)  sqrt((x(1)-z(1))^2+(x(2)-z(2))^2);

if cylinderInfo.exist
    for k1 = 1:size(cylinderInfo.X,2)
        % zMin = cylinderInfo.Z(k1);
        % zMax = zMin+cylinderInfo.height(k1);
        yMin = cylinderInfo.Y(k1);
        yMax = yMin + cylinderInfo.height(k1);
        
        % for k2 = 0:step/100:step
        for k2 = 0:step/10:step
            deltaX = newCoor(1) - nearCoor(1);
            deltaY = newCoor(2) - nearCoor(2);
            deltaZ = newCoor(3) - nearCoor(3);

            r = sqrt(deltaX^2+deltaY^2+deltaZ^2);
            fai = atan2(deltaY,deltaX);
            theta = acos(deltaZ/r);
            % fai = atan2(deltaZ, deltaX); % 使用Z代替Y，因为我们现在关注XZ平面
            % theta = acos(deltaY / r); % 使用Y代替Z，因为高度现在沿Y轴

            x = k2*sin(theta)*cos(fai);
            y = k2*sin(theta)*sin(fai);
            z = k2*cos(theta);
            
            % x = k2 * sin(theta) * cos(fai);
            % y = k2 * cos(theta); % Y轴上的位置
            % z = k2 * sin(theta) * sin(fai);

            checkPoint = [x+nearCoor(1),y+nearCoor(2),z+nearCoor(3)];
            % if calcuDis(checkPoint(1:2),[cylinderInfo.X(k1) cylinderInfo.Y(k1)])<cylinderInfo.radius(k1) && zMin<checkPoint(3) & checkPoint(3) < zMax
            %     cylinderFlag = 1;
            %     return;
            % end
            if calcuDis([checkPoint(1) checkPoint(3)],[cylinderInfo.X(k1) cylinderInfo.Z(k1)])<cylinderInfo.radius(k1) && yMin<checkPoint(2) && checkPoint(2) < yMax
                cylinderFlag = 1;
                return;
            end
            
        end
        
    end
    
end


end

