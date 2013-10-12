function [nicestplot_ret] = nicestplot(plotf, X, Y, title_, xlabel_, ylabel_,...
                                     color, LineWidth, FontSize) 
% Most customizable plot of the niceplot family.
% @param plotf Plotting function.
% @param X x-axis data.
% @param Y y-axis data.
% @param title_ Plot title.
% @param xlabel_ x-axis label.
% @param ylabel_ y-axis label.
% @param color Color code.
% @param LineWidth Line width.
% @param FontSize Font size.
    nicestplot_ret = plotf(X, Y, color, 'LineWidth', LineWidth);
    hold on; grid on;
    title(title_, 'FontSize', FontSize);
    xlabel(xlabel_, 'FontSize', FontSize);
    ylabel(ylabel_, 'FontSize', FontSize);
end
