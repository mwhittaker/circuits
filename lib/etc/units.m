function units
    % meters
    if (existcon( 'Ym_' )  == 0) defcon( 'Ym_' , 1e24  ); end
    if (existcon( 'Zm_' )  == 0) defcon( 'Zm_' , 1e21  ); end
    if (existcon( 'Em_' )  == 0) defcon( 'Em_' , 1e18  ); end
    if (existcon( 'Pm_' )  == 0) defcon( 'Pm_' , 1e15  ); end
    if (existcon( 'Tm_' )  == 0) defcon( 'Tm_' , 1e12  ); end
    if (existcon( 'Gm_' )  == 0) defcon( 'Gm_' , 1e9   ); end
    if (existcon( 'Mm_' )  == 0) defcon( 'Mm_' , 1e6   ); end
    if (existcon( 'km_' )  == 0) defcon( 'km_' , 1e3   ); end
    if (existcon( 'hm_' )  == 0) defcon( 'hm_' , 1e2   ); end
    if (existcon( 'dam_')  == 0) defcon( 'dam_', 1e1   ); end
    if (existcon( 'm_'  )  == 0) defcon( 'm_'  , 1e0   ); end
    if (existcon( 'dm_' )  == 0) defcon( 'dm_' , 1e-1  ); end
    if (existcon( 'cm_' )  == 0) defcon( 'cm_' , 1e-2  ); end
    if (existcon( 'mm_' )  == 0) defcon( 'mm_' , 1e-3  ); end
    if (existcon( 'um_' )  == 0) defcon( 'um_' , 1e-6  ); end
    if (existcon( 'nm_' )  == 0) defcon( 'nm_' , 1e-9  ); end
    if (existcon( 'pm_' )  == 0) defcon( 'pm_' , 1e-12 ); end
    if (existcon( 'fm_' )  == 0) defcon( 'fm_' , 1e-15 ); end
    if (existcon( 'am_' )  == 0) defcon( 'am_' , 1e-18 ); end
    if (existcon( 'zm_' )  == 0) defcon( 'zm_' , 1e-21 ); end
    if (existcon( 'ym_' )  == 0) defcon( 'ym_' , 1e-24 ); end
    
    % grams
    if (existcon( 'Yg_' )  == 0) defcon( 'Yg_' , 1e24  ); end
    if (existcon( 'Zg_' )  == 0) defcon( 'Zg_' , 1e21  ); end
    if (existcon( 'Eg_' )  == 0) defcon( 'Eg_' , 1e18  ); end
    if (existcon( 'Pg_' )  == 0) defcon( 'Pg_' , 1e15  ); end
    if (existcon( 'Tg_' )  == 0) defcon( 'Tg_' , 1e12  ); end
    if (existcon( 'Gg_' )  == 0) defcon( 'Gg_' , 1e9   ); end
    if (existcon( 'Mg_' )  == 0) defcon( 'Mg_' , 1e6   ); end
    if (existcon( 'kg_' )  == 0) defcon( 'kg_' , 1e3   ); end
    if (existcon( 'hg_' )  == 0) defcon( 'hg_' , 1e2   ); end
    if (existcon( 'dag_')  == 0) defcon( 'dag_', 1e1   ); end
    if (existcon( 'g_'  )  == 0) defcon( 'g_'  , 1e0   ); end
    if (existcon( 'dg_' )  == 0) defcon( 'dg_' , 1e-1  ); end
    if (existcon( 'cg_' )  == 0) defcon( 'cg_' , 1e-2  ); end
    if (existcon( 'mg_' )  == 0) defcon( 'mg_' , 1e-3  ); end
    if (existcon( 'ug_' )  == 0) defcon( 'ug_' , 1e-6  ); end
    if (existcon( 'ng_' )  == 0) defcon( 'ng_' , 1e-9  ); end
    if (existcon( 'pg_' )  == 0) defcon( 'pg_' , 1e-12 ); end
    if (existcon( 'fg_' )  == 0) defcon( 'fg_' , 1e-15 ); end
    if (existcon( 'ag_' )  == 0) defcon( 'ag_' , 1e-18 ); end
    if (existcon( 'zg_' )  == 0) defcon( 'zg_' , 1e-21 ); end
    if (existcon( 'yg_' )  == 0) defcon( 'yg_' , 1e-24 ); end
    
    % seconds
    if (existcon( 'Ys_' )  == 0) defcon( 'Ys_' , 1e24  ); end
    if (existcon( 'Zs_' )  == 0) defcon( 'Zs_' , 1e21  ); end
    if (existcon( 'Es_' )  == 0) defcon( 'Es_' , 1e18  ); end
    if (existcon( 'Ps_' )  == 0) defcon( 'Ps_' , 1e15  ); end
    if (existcon( 'Ts_' )  == 0) defcon( 'Ts_' , 1e12  ); end
    if (existcon( 'Gs_' )  == 0) defcon( 'Gs_' , 1e9   ); end
    if (existcon( 'Ms_' )  == 0) defcon( 'Ms_' , 1e6   ); end
    if (existcon( 'ks_' )  == 0) defcon( 'ks_' , 1e3   ); end
    if (existcon( 'hs_' )  == 0) defcon( 'hs_' , 1e2   ); end
    if (existcon( 'das_')  == 0) defcon( 'das_', 1e1   ); end
    if (existcon( 's_'  )  == 0) defcon( 's_'  , 1e0   ); end
    if (existcon( 'ds_' )  == 0) defcon( 'ds_' , 1e-1  ); end
    if (existcon( 'cs_' )  == 0) defcon( 'cs_' , 1e-2  ); end
    if (existcon( 'ms_' )  == 0) defcon( 'ms_' , 1e-3  ); end
    if (existcon( 'us_' )  == 0) defcon( 'us_' , 1e-6  ); end
    if (existcon( 'ns_' )  == 0) defcon( 'ns_' , 1e-9  ); end
    if (existcon( 'ps_' )  == 0) defcon( 'ps_' , 1e-12 ); end
    if (existcon( 'fs_' )  == 0) defcon( 'fs_' , 1e-15 ); end
    if (existcon( 'as_' )  == 0) defcon( 'as_' , 1e-18 ); end
    if (existcon( 'zs_' )  == 0) defcon( 'zs_' , 1e-21 ); end
    if (existcon( 'ys_' )  == 0) defcon( 'ys_' , 1e-24 ); end
    
    % amperes
    if (existcon( 'YA_' )  == 0) defcon( 'YA_' , 1e24  ); end
    if (existcon( 'ZA_' )  == 0) defcon( 'ZA_' , 1e21  ); end
    if (existcon( 'EA_' )  == 0) defcon( 'EA_' , 1e18  ); end
    if (existcon( 'PA_' )  == 0) defcon( 'PA_' , 1e15  ); end
    if (existcon( 'TA_' )  == 0) defcon( 'TA_' , 1e12  ); end
    if (existcon( 'GA_' )  == 0) defcon( 'GA_' , 1e9   ); end
    if (existcon( 'MA_' )  == 0) defcon( 'MA_' , 1e6   ); end
    if (existcon( 'kA_' )  == 0) defcon( 'kA_' , 1e3   ); end
    if (existcon( 'hA_' )  == 0) defcon( 'hA_' , 1e2   ); end
    if (existcon( 'daA_')  == 0) defcon( 'daA_', 1e1   ); end
    if (existcon( 'A_'  )  == 0) defcon( 'A_'  , 1e0   ); end
    if (existcon( 'dA_' )  == 0) defcon( 'dA_' , 1e-1  ); end
    if (existcon( 'cA_' )  == 0) defcon( 'cA_' , 1e-2  ); end
    if (existcon( 'mA_' )  == 0) defcon( 'mA_' , 1e-3  ); end
    if (existcon( 'uA_' )  == 0) defcon( 'uA_' , 1e-6  ); end
    if (existcon( 'nA_' )  == 0) defcon( 'nA_' , 1e-9  ); end
    if (existcon( 'pA_' )  == 0) defcon( 'pA_' , 1e-12 ); end
    if (existcon( 'fA_' )  == 0) defcon( 'fA_' , 1e-15 ); end
    if (existcon( 'aA_' )  == 0) defcon( 'aA_' , 1e-18 ); end
    if (existcon( 'zA_' )  == 0) defcon( 'zA_' , 1e-21 ); end
    if (existcon( 'yA_' )  == 0) defcon( 'yA_' , 1e-24 ); end
    
    % kelvin
    if (existcon( 'YK_' )  == 0) defcon( 'YK_' , 1e24  ); end
    if (existcon( 'ZK_' )  == 0) defcon( 'ZK_' , 1e21  ); end
    if (existcon( 'EK_' )  == 0) defcon( 'EK_' , 1e18  ); end
    if (existcon( 'PK_' )  == 0) defcon( 'PK_' , 1e15  ); end
    if (existcon( 'TK_' )  == 0) defcon( 'TK_' , 1e12  ); end
    if (existcon( 'GK_' )  == 0) defcon( 'GK_' , 1e9   ); end
    if (existcon( 'MK_' )  == 0) defcon( 'MK_' , 1e6   ); end
    if (existcon( 'kK_' )  == 0) defcon( 'kK_' , 1e3   ); end
    if (existcon( 'hK_' )  == 0) defcon( 'hK_' , 1e2   ); end
    if (existcon( 'daK_')  == 0) defcon( 'daK_', 1e1   ); end
    if (existcon( 'K_'  )  == 0) defcon( 'K_'  , 1e0   ); end
    if (existcon( 'dK_' )  == 0) defcon( 'dK_' , 1e-1  ); end
    if (existcon( 'cK_' )  == 0) defcon( 'cK_' , 1e-2  ); end
    if (existcon( 'mK_' )  == 0) defcon( 'mK_' , 1e-3  ); end
    if (existcon( 'uK_' )  == 0) defcon( 'uK_' , 1e-6  ); end
    if (existcon( 'nK_' )  == 0) defcon( 'nK_' , 1e-9  ); end
    if (existcon( 'pK_' )  == 0) defcon( 'pK_' , 1e-12 ); end
    if (existcon( 'fK_' )  == 0) defcon( 'fK_' , 1e-15 ); end
    if (existcon( 'aK_' )  == 0) defcon( 'aK_' , 1e-18 ); end
    if (existcon( 'zK_' )  == 0) defcon( 'zK_' , 1e-21 ); end
    if (existcon( 'yK_' )  == 0) defcon( 'yK_' , 1e-24 ); end
    
    % meters
    if (existcon( 'Ymol_' )  == 0) defcon( 'Ymol_' , 1e24  ); end
    if (existcon( 'Zmol_' )  == 0) defcon( 'Zmol_' , 1e21  ); end
    if (existcon( 'Emol_' )  == 0) defcon( 'Emol_' , 1e18  ); end
    if (existcon( 'Pmol_' )  == 0) defcon( 'Pmol_' , 1e15  ); end
    if (existcon( 'Tmol_' )  == 0) defcon( 'Tmol_' , 1e12  ); end
    if (existcon( 'Gmol_' )  == 0) defcon( 'Gmol_' , 1e9   ); end
    if (existcon( 'Mmol_' )  == 0) defcon( 'Mmol_' , 1e6   ); end
    if (existcon( 'kmol_' )  == 0) defcon( 'kmol_' , 1e3   ); end
    if (existcon( 'hmol_' )  == 0) defcon( 'hmol_' , 1e2   ); end
    if (existcon( 'damol_')  == 0) defcon( 'damol_', 1e1   ); end
    if (existcon( 'mol_'  )  == 0) defcon( 'mol_'  , 1e0   ); end
    if (existcon( 'dmol_' )  == 0) defcon( 'dmol_' , 1e-1  ); end
    if (existcon( 'cmol_' )  == 0) defcon( 'cmol_' , 1e-2  ); end
    if (existcon( 'mmol_' )  == 0) defcon( 'mmol_' , 1e-3  ); end
    if (existcon( 'umol_' )  == 0) defcon( 'umol_' , 1e-6  ); end
    if (existcon( 'nmol_' )  == 0) defcon( 'nmol_' , 1e-9  ); end
    if (existcon( 'pmol_' )  == 0) defcon( 'pmol_' , 1e-12 ); end
    if (existcon( 'fmol_' )  == 0) defcon( 'fmol_' , 1e-15 ); end
    if (existcon( 'amol_' )  == 0) defcon( 'amol_' , 1e-18 ); end
    if (existcon( 'zmol_' )  == 0) defcon( 'zmol_' , 1e-21 ); end
    if (existcon( 'ymol_' )  == 0) defcon( 'ymol_' , 1e-24 ); end
    
    % candela
    if (existcon( 'Ycd_' )  == 0) defcon( 'Ycd_' , 1e24  ); end
    if (existcon( 'Zcd_' )  == 0) defcon( 'Zcd_' , 1e21  ); end
    if (existcon( 'Ecd_' )  == 0) defcon( 'Ecd_' , 1e18  ); end
    if (existcon( 'Pcd_' )  == 0) defcon( 'Pcd_' , 1e15  ); end
    if (existcon( 'Tcd_' )  == 0) defcon( 'Tcd_' , 1e12  ); end
    if (existcon( 'Gcd_' )  == 0) defcon( 'Gcd_' , 1e9   ); end
    if (existcon( 'Mcd_' )  == 0) defcon( 'Mcd_' , 1e6   ); end
    if (existcon( 'kcd_' )  == 0) defcon( 'kcd_' , 1e3   ); end
    if (existcon( 'hcd_' )  == 0) defcon( 'hcd_' , 1e2   ); end
    if (existcon( 'dacd_')  == 0) defcon( 'dacd_', 1e1   ); end
    if (existcon( 'cd_'  )  == 0) defcon( 'cd_'  , 1e0   ); end
    if (existcon( 'dcd_' )  == 0) defcon( 'dcd_' , 1e-1  ); end
    if (existcon( 'ccd_' )  == 0) defcon( 'ccd_' , 1e-2  ); end
    if (existcon( 'mcd_' )  == 0) defcon( 'mcd_' , 1e-3  ); end
    if (existcon( 'ucd_' )  == 0) defcon( 'ucd_' , 1e-6  ); end
    if (existcon( 'ncd_' )  == 0) defcon( 'ncd_' , 1e-9  ); end
    if (existcon( 'pcd_' )  == 0) defcon( 'pcd_' , 1e-12 ); end
    if (existcon( 'fcd_' )  == 0) defcon( 'fcd_' , 1e-15 ); end
    if (existcon( 'acd_' )  == 0) defcon( 'acd_' , 1e-18 ); end
    if (existcon( 'zcd_' )  == 0) defcon( 'zcd_' , 1e-21 ); end
    if (existcon( 'ycd_' )  == 0) defcon( 'ycd_' , 1e-24 ); end
    
    % volts
    if (existcon( 'YV_' )  == 0) defcon( 'YV_' , 1e24  ); end
    if (existcon( 'ZV_' )  == 0) defcon( 'ZV_' , 1e21  ); end
    if (existcon( 'EV_' )  == 0) defcon( 'EV_' , 1e18  ); end
    if (existcon( 'PV_' )  == 0) defcon( 'PV_' , 1e15  ); end
    if (existcon( 'TV_' )  == 0) defcon( 'TV_' , 1e12  ); end
    if (existcon( 'GV_' )  == 0) defcon( 'GV_' , 1e9   ); end
    if (existcon( 'MV_' )  == 0) defcon( 'MV_' , 1e6   ); end
    if (existcon( 'kV_' )  == 0) defcon( 'kV_' , 1e3   ); end
    if (existcon( 'hV_' )  == 0) defcon( 'hV_' , 1e2   ); end
    if (existcon( 'daV_')  == 0) defcon( 'daV_', 1e1   ); end
    if (existcon( 'V_'  )  == 0) defcon( 'V_'  , 1e0   ); end
    if (existcon( 'dV_' )  == 0) defcon( 'dV_' , 1e-1  ); end
    if (existcon( 'cV_' )  == 0) defcon( 'cV_' , 1e-2  ); end
    if (existcon( 'mV_' )  == 0) defcon( 'mV_' , 1e-3  ); end
    if (existcon( 'uV_' )  == 0) defcon( 'uV_' , 1e-6  ); end
    if (existcon( 'nV_' )  == 0) defcon( 'nV_' , 1e-9  ); end
    if (existcon( 'pV_' )  == 0) defcon( 'pV_' , 1e-12 ); end
    if (existcon( 'fV_' )  == 0) defcon( 'fV_' , 1e-15 ); end
    if (existcon( 'aV_' )  == 0) defcon( 'aV_' , 1e-18 ); end
    if (existcon( 'zV_' )  == 0) defcon( 'zV_' , 1e-21 ); end
    if (existcon( 'yV_' )  == 0) defcon( 'yV_' , 1e-24 ); end
end

function ret = existcon(con)
    % Can you believe MATLAB's exist function is case insensitive!?
    % How insensitive.
    [pathstr, name, ext] = fileparts(which(con));
    ret = strcmp(name, con);
end
