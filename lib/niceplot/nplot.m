function [nplot_ret] = nplot(X, Y, title_, xlabel_, ylabel_) 
% Most terse plot of the niceplot family.
% @param X x-axis data.
% @param Y y-axis data.
% @param title_ Plot title.
% @param xlabel_ x-axis label.
% @param ylabel_ y-axis label.
    nplot_ret = plot(X, Y, 'LineWidth', 2);
    hold on; grid on;
    title(title_, 'FontSize', 18);
    xlabel(xlabel_, 'FontSize', 18);
    ylabel(ylabel_, 'FontSize', 18);
end
