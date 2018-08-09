% Write ground truth
fileID = fopen('grnd_truth.txt','w');
fprintf(fileID, '%2.6f %2.6f %2.6f %2.6f\n', Robots{1, 1}.G');

% Write odometry data
fileID = fopen('robot1_Odo.txt','w');
fprintf(fileID, '%2.6f %2.6f %2.6f\n', Robots{1, 1}.O');

% Write measurement data
fileID = fopen('robot1_Mesurement.txt','w');
fprintf(fileID, '%2.6f %d %2.6f %2.6f\n', Robots{1, 1}.M');