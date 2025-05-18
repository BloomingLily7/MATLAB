function tour_order =reorder_xyz()
    % 文件路径
    tour_filename = 'tour_order.txt';
    xyz_filename = 'xyz.txt';
    output_filename = 'reordered_xyz.txt';

    % 读取TOUR_SECTION数据
    fid = fopen(tour_filename, 'r');
    tour_content = textscan(fid, '%s', 'Delimiter', '\n');
    fclose(fid);
    tour_content = tour_content{1};

    % 找到TOUR_SECTION开始的位置
    start_index = find(strcmp(tour_content, 'TOUR_SECTION')) + 1;
    end_index = find(strcmp(tour_content, '-1')) - 1;

    % 提取顺序数据
    tour_order = str2double(tour_content(start_index:end_index));

    % 读取xyz数据
    xyz_data = readmatrix(xyz_filename);

    % 根据TOUR_SECTION顺序重新排列xyz数据
    reordered_xyz = xyz_data(tour_order, 2:end); % 假设第一列是序号，从第二列开始是坐标数据

    % 将重新排列的数据写入新文件
    dlmwrite(output_filename, reordered_xyz, 'delimiter', ' ', 'precision', 9);
end


