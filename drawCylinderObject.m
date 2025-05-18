function drawCylinderObject(cylinderInfo,colorMatCylinder,pellucidity)

if cylinderInfo.exist
    %  ��һ��������Բ����ĵײ�Բ������ֵ���ڶ���������Բ����ֱ����������������Բ���߶�
    %  ���ĸ�������͸���ȣ��������������ɫ����
    for k1 = 1:size(cylinderInfo.X,2)
        coor = [cylinderInfo.X(k1) cylinderInfo.Y(k1) cylinderInfo.Z(k1)];
        diameter = cylinderInfo.radius(k1)*2;
        height = cylinderInfo.height(k1);
        facealpha = pellucidity;
        color = colorMatCylinder;
        plotcylinder(coor,diameter,height,facealpha,color)
        
    end
    
end

end

