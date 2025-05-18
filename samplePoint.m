function randCoor = samplePoint(axisStart,axisLWH,goalPoint)

if rand<0.5
    randX = rand*axisLWH(1)+axisStart(1);
    randY = rand*axisLWH(2)+axisStart(2);
    randZ = rand*axisLWH(3)+axisStart(3);
    randCoor = [randX randY randZ];

    % randX = (2 * rand(1) - 1)*axisLWH(1)+axisStart(1);
    % randY = (2 * rand(1) - 1)*axisLWH(2)+axisStart(2);
    % randZ = (2 * rand(1) - 1)*axisLWH(3)+axisStart(3);
    randCoor = [randX randY randZ];
    
else
    randCoor = goalPoint;  
end

end

