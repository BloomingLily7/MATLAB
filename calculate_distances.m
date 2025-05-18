function calculate_distances()
    % 输入文件名
    input_filename = 'xyz.txt';
    % 输出文件名
    output_filename = 'distances.txt';

    % 读取文件中的点，从第二列开始
    points = readmatrix(input_filename, 'Range', 'B1');

    % 计算点的数量
    n = size(points, 1);

    % 初始化距离矩阵
    distances = zeros(n, n);

        % 计算每对点之间的欧式距离并扩大100倍
    for i = 1:n
        for j = i+1:n
            % 计算扩大100倍的距离并四舍五入
            distances(i, j) = round(sqrt(sum((points(i, :) - points(j, :)).^2)) * 100);
            distances(j, i) = distances(i, j); % 矩阵是对称的
        end
    end

    % 距离已经是整数，可以直接保存
    distances = int32(distances);

    % 打开文件准备写入
    fileID = fopen(output_filename, 'w');

    % 遍历每行，将距离写入文件
    for i = 1:n
        % 遍历除最后一个元素之外的所有元素，后接一个空格
        for j = 1:n-1
            fprintf(fileID, '%d ', distances(i, j));  % 使用 %d 格式化整数
        end
        % 最后一个元素后不加空格，直接换行
        fprintf(fileID, '%d\n', distances(i, n));  % 使用 %d 格式化整数
    end

    % 关闭文件
    fclose(fileID);



