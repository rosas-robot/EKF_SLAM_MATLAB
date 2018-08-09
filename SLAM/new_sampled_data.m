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
fileID = fopen('grnd_truth5.txt','w');
fprintf(fileID, '%2.6f %2.6f %2.6f %2.6f\n', Robots{1, 1}.G');

% Write odometry data
fileID = fopen('robot_Odo5.txt','w');
fprintf(fileID, '%2.6f %2.6f %2.6f\n', Robots{1, 1}.O');

% Write measurement data
fileID = fopen('robot_Mesurement5.txt','w');
fprintf(fileID, '%2.6f %d %2.6f %2.6f\n', Robots{1, 1}.M');