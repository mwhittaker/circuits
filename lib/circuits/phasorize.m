function ret = phasorize(complex_num)
% Turns a complex number to a phasor
% @param complex_num Complex number.
    mag = abs(complex_num);
    phi = phase(complex_num);
    ret = strcat(num2str(mag), '*exp(', num2str(phi), 'j)');
end
