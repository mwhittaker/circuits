function ret = niceaxes(label, magnitude)
    label_ = label_lookup(label);
    prefix_ = prefix_lookup(magnitude);
    unit_ = unit_lookup(label);
    ret = strcat(label_, ' (', prefix_, unit_, ')');
end

function ret = label_lookup(label)
    label_map = containers.Map();
    label_map('voltage')        = 'Voltage';
    label_map('v')              = 'Voltage';
    label_map('current')        = 'Current';
    label_map('i')              = 'Current';
    label_map('power')          = 'Power';
    label_map('p')              = 'Power';
    label_map('resistance')     = 'Resistance';
    label_map('r')              = 'Resistance';
    label_map('capacitance')    = 'Capacitance';
    label_map('c')              = 'Capacitance';
    label_map('inductance')     = 'Inductance';
    label_map('l')              = 'Inductance';
    label_map('time')           = 'Time';
    label_map('t')              = 'Time';

    label = lower(label);
    if (label_map.isKey(label))
        ret = label_map(label);
    else
        die();
    end
end

function ret = unit_lookup(unit)
    unit_map = containers.Map();
    unit_map('voltage')        = 'V';
    unit_map('v')              = 'V';
    unit_map('current')        = 'A';
    unit_map('i')              = 'A';
    unit_map('power')          = 'W';
    unit_map('p')              = 'W';
    unit_map('resistance')     = '\omega';
    unit_map('r')              = '\omega';
    unit_map('capacitance')    = 'F';
    unit_map('c')              = 'F';
    unit_map('inductance')     = 'H';
    unit_map('l')              = 'H';
    unit_map('time')           = 's';
    unit_map('t')              = 's';

    unit = lower(unit);
    if (unit_map.isKey(unit)) 
        ret = unit_map(unit);
    else
        die();
    end
end

function ret = prefix_lookup(magnitude)
    prefix_map = containers.Map('KeyType', 'double', 'ValueType', 'char');
    prefix_map(1e-24) = 'y';
    prefix_map(1e-21) = 'z';
    prefix_map(1e-18) = 'a';
    prefix_map(1e-15) = 'f';
    prefix_map(1e-12) = 'p';
    prefix_map(1e-9)  = 'n';
    prefix_map(1e-6)  = '\mu';
    prefix_map(1e-3)  = 'm';
    prefix_map(1e-2)  = 'c';
    prefix_map(1e-1)  = 'd';
    prefix_map(1e0)   = ' ';
    prefix_map(1e1)   = 'da';
    prefix_map(1e2)   = 'h';
    prefix_map(1e3)   = 'k';
    prefix_map(1e6)   = 'M';
    prefix_map(1e9)   = 'G';
    prefix_map(1e12)  = 'T';
    prefix_map(1e15)  = 'P';
    prefix_map(1e18)  = 'E';
    prefix_map(1e21)  = 'Z';
    prefix_map(1e24)  = 'Y';

    if (prefix_map.isKey(magnitude))
        ret = prefix_map(magnitude);
    else
        die();
    end
end

function die
    err = MException('niceaxes:niceaxes', 'Invalid niceaxes arguments');
    throw(err);
end
