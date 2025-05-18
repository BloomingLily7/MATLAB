function create_tsp_file()
    % 距离矩阵文件名
    distance_filename = 'distances.txt';
    % 输出的.tsp文件名
    tsp_filename = 'problem.tsp';
    
    % 读取距离矩阵
    distances = readmatrix(distance_filename);
    
    % 打开.tsp文件准备写入
    fileID = fopen(tsp_filename, 'w');
    
    % 写入.tsp文件头部
    fprintf(fileID, 'NAME: Custom TSP\n');
    fprintf(fileID, 'TYPE: TSP\n');
    fprintf(fileID, 'DIMENSION: %d\n', size(distances, 1));
    fprintf(fileID, 'EDGE_WEIGHT_TYPE: EXPLICIT\n');
    fprintf(fileID, 'EDGE_WEIGHT_FORMAT: FULL_MATRIX\n');
    fprintf(fileID, 'EDGE_WEIGHT_SECTION\n');
    
    % 将距离矩阵写入.tsp文件，确保格式为整数
    for i = 1:size(distances, 1)
        fprintf(fileID, '%d ', distances(i, :));  % 使用整数格式 %d
        fprintf(fileID, '\n');
    end
    
    % 写入文件尾部
    fprintf(fileID, 'EOF\n');
    
    % 关闭文件
    fclose(fileID);
end



