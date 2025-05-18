function update_distance(k1, pathLength, tour_order_file, distances_file)
    % Load tour order from file
    fid = fopen(tour_order_file, 'r');
    C = textscan(fid, '%s', 'Delimiter', '\n');
    fclose(fid);
    lines = C{1};
    
    % Find the index for TOUR_SECTION and -1
    start_idx = find(strcmp(lines, 'TOUR_SECTION')) + 1;
    end_idx = find(strcmp(lines, '-1')) - 1;
    
    % Extract node sequence
    nodes = str2double(lines(start_idx:end_idx));
    
    % Load the distance matrix using dlmread for regular number formatting
    distances = dlmread(distances_file);
    
    % Update distances for the first k1 pairs
    for i = 1:k1
        node1 = nodes(i);
        node2 = nodes(i+1);
        
        % Update the distances
        distances(node1, node2) = floor(pathLength * 100);
        distances(node2, node1) = floor(pathLength * 100);  % Assuming symmetric matrix
    end
    
    % Save the updated distance matrix with regular number formatting
    dlmwrite(distances_file, distances, 'delimiter', ' ', 'precision', 6);
end
