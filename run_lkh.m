function minCost = run_lkh()
    % 定义 TSP 问题文件名和 LKH 相关路径
    fname_tsp = 'problem';
    LKHdir = 'C:/Users/Eriri/Desktop/final/';
    TSPLIBdir = 'C:/Users/Eriri/Desktop/final/';
    % LKHdir = '/';
    % TSPLIBdir = '/';
    
    % 构建 LKH 命令行命令
    lkh_cmd = [LKHdir 'LKH ' TSPLIBdir fname_tsp '.par'];

    % 执行 LKH 算法
    [status, cmdout] = system(lkh_cmd, '-echo');
    if status ~= 0
        error('LKH did not execute successfully. Output: %s', cmdout);
    end

    % 解析 LKH 输出中的最小成本
    minCost = parseLKHOutput(cmdout);
    fprintf('Minimum cost found by LKH: %f\n', minCost/100);
end

function minCost = parseLKHOutput(output)
    % 使用正则表达式从输出中提取最小成本值
    pattern = 'Cost.min = (\d+), Cost.avg';
    tokens = regexp(output, pattern, 'tokens');
    minCost = str2double(tokens{1}{1});
end


