clc;
clear all;

[filename,pathname] = uigetfile('E:/Documents/Visual Studio 2012/Projects/SBPM/*.txt','Select the text data file');
input = load([pathname filename]);
data = input';

hold all;
title(['Duration change after Number of Generation of ' filename], 'Interpreter','none');
xlabel('Number of Generation');
ylabel('Overall Duration');
boxplot(data);

% set x axis label
label = '';
for i = 2:100
    if mod(i, 10) ~= 0
        label = sprintf('%s|', label);
    else
        label = sprintf('%s|%d', label, i);
    end
end
set(gca, 'XTick', 1:100);
set(gca,'XTickLabel',label);
[pathstr, name, ext] = fileparts(filename);
saveas(gca, name, 'jpg');
movefile([name '.jpg'], 'jpgs');