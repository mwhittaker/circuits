function ret = parallel(v)
% Return parallel impedance
% @param v Vector of impedences
% @return Equivalent parallel impedance. 
    ret = 1 ./ sum(1 ./ v);
end
