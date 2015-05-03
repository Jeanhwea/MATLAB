clc;
clear all;

load output_idx_gpu_cpu.txt

hold all;
title('Performance comparison between CPU and GPU');
xlabel('Number of Computation');
ylabel('Elapse time (ms)');
x = output_idx_gpu_cpu(:,1);
gpu = output_idx_gpu_cpu(:,2);
cpu = output_idx_gpu_cpu(:,3);
plot(x, gpu, 'r', 'LineWidth', 2);
plot(x, cpu, 'b', 'LineWidth', 2);
legend('GPU','CPU','Location','northwest')
