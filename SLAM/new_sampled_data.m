clc
clear
close all

addpath ../common;

deltaT = .02;

n_robots = 5;        % Robot data you want to resample
n_landmarks = 15;
[Barcodes, Landmark_Groundtruth, Robots] = loadMRCLAMdataSet(n_robots);
[Robots, timesteps] = sampleMRCLAMdataSet(Robots, deltaT);

% Write ground truth
for i = 1:n_robots
    gt_fname = ['robot' num2str(i) '/' 'grnd_truth' num2str(i) '.txt'];
    fileID = fopen(gt_fname, 'w');
    fprintf(fileID, '%2.6f %2.6f %2.6f %2.6f\n', Robots{1, i}.G');

    % Write odometry data
    odo_fname = ['robot' num2str(i) '/' 'robot_Odo' num2str(i) '.txt'];
    fileID = fopen(odo_fname, 'w');
    fprintf(fileID, '%2.6f %2.6f %2.6f\n', Robots{1, i}.O');

    % Write measurement data
    measurement_fname = ['robot' num2str(i) '/' 'robot_Mesurement' num2str(i) '.txt'];
    fileID = fopen(measurement_fname, 'w');
    fprintf(fileID, '%2.6f %d %2.6f %2.6f\n', Robots{1, i}.M');
end