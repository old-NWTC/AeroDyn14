
%NOTE: make sure this compile option is included in the COMPFLAGS variable: 
%         /assume:byterecl 

NWTC_LIB    = 'D:\DATA\Fortran\Fortran Subs\NWTC_subs\v1.02.00\Source';
WIND_LOC    = 'D:\DATA\Fortran\IVF Projects\AeroDyn\Release\Source\InflowWind\Source';

mex('-v', ...
    '-f','intelf10msvs2003opts.bat', ...
    '-output', 'WindInflow_mex',...
    [NWTC_LIB '\DoubPrec.f90'           ], ... 
    [NWTC_LIB '\SysMatlab.f90'          ], ...
    [NWTC_LIB '\NWTC_IO.f90'            ], ...
    [NWTC_LIB '\NWTC_Num.f90'           ], ...
    [NWTC_LIB '\NWTC_Aero.f90'          ], ...
    [NWTC_LIB '\NWTC_Library.f90'       ], ...
    [WIND_LOC '\SharedInflowDefs.f90'   ], ...
    [WIND_LOC '\HHWind.f90'             ], ...
    [WIND_LOC '\FFWind.f90'             ], ...
    [WIND_LOC '\FDWind.f90'             ], ...
    [WIND_LOC '\CTWind.f90'             ], ...
    [WIND_LOC '\UserWind.f90'           ], ...
    [WIND_LOC '\InflowWindMod.f90'      ], ...
    'WindInflow_Gateway.f90'            );

delete ('*.mod')
disp('mex completed')
