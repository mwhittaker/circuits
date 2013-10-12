function [ret_legend] = nlegend(varargin)
% Makes nice legends. nlegend behaves exactly like legend except that legends
% are automatically 'bested'. That is, their location is set to best. 
% @param varargin Legend labels in order of plotting.
    ret_legend = legend(varargin{:});
    set(ret_legend, 'Location', 'Best');
end
