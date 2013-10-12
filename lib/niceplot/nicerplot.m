function [nicerplot_ret] = nicerplot(plotf, X, Y, title_, xlabel_, ylabel_, color) 
% Blend of tersness and flexibility in the niceplot family.
% @param plotf Plotting function.
% @param X x-axis data.
% @param Y y-axis data.
% @param title_ Plot title.
% @param xlabel_ x-axis label.
% @param ylabel_ y-axis label.
% @param color Color code.
    nicerplot_ret = plotf(X, Y, color, 'LineWidth', 2);
    hold on; grid on;
    title(title_, 'FontSize', 18);
    xlabel(xlabel_, 'FontSize', 18);
    ylabel(ylabel_, 'FontSize', 18);
end
