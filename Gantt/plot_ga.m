clc;
clear all;

load ga.txt

hold all;
title('Performance');
xlabel('Number of generation');
ylabel('Best score in percentage (%)');
plot(ga, 'b', 'LineWidth', 2);
