function [Path, pathLength] = RRT(startPoint, axisStart, axisLWH, goalPoint, cubeInfo, cylinderInfo, sphereInfo)
%% RRT�㷨Ѱ��·����

%% ��������
calcuDis = @(x,y) sqrt((x(1)-y(1))^2 + (x(2)-y(2))^2 + (x(3)-y(3))^2); 
iterMax = 20000;   % ����������
iter = 0;   % ��ǰ��������
step = 0.5;  % ����
count = 1;  % ������
Thr = 0.5;   % ��ֵ
pathLength = 0; % ��ʼ��·������Ϊ0

% ������
T.x(1) = startPoint(1);
T.y(1) = startPoint(2);
T.z(1) = startPoint(3);
T.pre(1) = 0;

while iter < iterMax

    if iter > 10000
        step = 2.5;
    end

    iter = iter + 1;

    %% �ڿռ����������
    randCoor = samplePoint(axisStart, axisLWH, goalPoint);

    %% Ѱ�����������
    [nearCoor, preIndex] = findNearPoint(randCoor, T);

    %% ����ָ�����������µ���չ��
    newCoor = expandPoint(nearCoor, randCoor, step);

    %% ��ײ���
    cubeFlag = isCubeCollision(cubeInfo, nearCoor, newCoor, step);  
    cylinderFlag = isCylinderCollision(cylinderInfo, nearCoor, newCoor, step); 
    sphereFlag = isSphereCollision(sphereInfo, nearCoor, newCoor, step);  

    if cubeFlag || cylinderFlag || sphereFlag
        continue;
    end

    %% ���µ��������
    count = count + 1;
    T.x(count) = newCoor(1);
    T.y(count) = newCoor(2);
    T.z(count) = newCoor(3);
    T.pre(count) = preIndex;
    pathLength = pathLength + calcuDis(nearCoor, newCoor); % ����·������

    if calcuDis(newCoor, goalPoint) < Thr
        break;
    end

end

if iter == iterMax
    Path = [];
    pathLength = 0; % ��·��ʱ·������Ϊ0
    disp('·���滮ʧ��');
    return;
end

%% Ѱ��·��
index = T.pre(end);
count = 1;

%����ʼ����ӵ�Path��
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

%��Ŀ�����ӵ�Path��
Path = flipud(Path);
count = count+1;
Path(count,1) = goalPoint(1);
Path(count,2) = goalPoint(2);
Path(count,3) = goalPoint(3);
end
