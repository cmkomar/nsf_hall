
PRO NSF_Hall_IMF

  rho =       0.50
  Temp = 232100.00
  ux =     -400.00
  uy =        0.00
  uz =        0.00

  bx =        0.00
  Bmag =     20.00

  iYear = 2001
  iMonth = 01
  iDay = 01
  iHour = 00
  iMinute = 00
  iSecond = 00
  FracSecond = 0.0

  format_string = '( I4, 1X, I02, 1X, I02, 1X, I02, 1X, I02, 1X, ' + $
                    'I02, 1X, I03, 1X, F7.1, 1X, F7.1, 1X, ' + $
                    'F7.1, 1X, F7.1, 1X, F7.1, 1X, F7.1, 1X, F7.3, ' + $
                    '2X, F10.2 )'
  FOR $
     ;; clock_angle = 30, 30, 30 $
     clock_angle = 00, 180, 30 $
  DO BEGIN

     by = Bmag * sin( clock_angle * !dtor )
     bz = Bmag * cos( clock_angle * !dtor )
     
     OPENW, lun_IMF_dat, $
            'IMF_' + $
            STRTRIM( STRING( clock_angle, FORMAT = '(I03)'), 2 ) + $
            'deg.dat', /GET_LUN

     PRINTF, lun_IMF_dat, "#COR"
     PRINTF, lun_IMF_dat, "GSE"
     PRINTF, lun_IMF_dat, ""
     PRINTF, lun_IMF_dat, "#START"
     PRINTF, lun_IMF_dat, $
             iYear, iMonth, iDay, iHour + 0, iMinute, iSecond, FracSecond, $
             bx, by, bz, ux, uy, uz, rho, Temp, $
             FORMAT = format_string
     PRINTF, lun_IMF_dat, $
             iYear, iMonth, iDay, iHour + 1, iMinute, iSecond, FracSecond, $
             bx, by, bz, ux, uy, uz, rho, Temp, $
             FORMAT = format_string
     FREE_lun, lun_IMF_dat


     OPENW, lun_IMF_log, $
            'IMF_' + $
            STRTRIM( STRING( clock_angle, FORMAT = '(I03)'), 2 ) + $
            'deg.log', /GET_LUN

     PRINTF, lun_IMF_log, $
             "SWMF SW Logfile: Clock Angle = " + $
             STRTRIM( STRING( clock_angle, FORMAT = '(I03)'), 2 ) + $
             " degrees"
     PRINTF, lun_IMF_log, $
             "year month day hour minute second ms bx by bz ux uy uz n T"
     PRINTF, lun_IMF_log, $
             iYear, iMonth, iDay, iHour + 0, iMinute, iSecond, FracSecond, $
             bx, by, bz, ux, uy, uz, rho, Temp, $
             FORMAT = format_string
     PRINTF, lun_IMF_log, $
             iYear, iMonth, iDay, iHour + 1, iMinute, iSecond, FracSecond, $
             bx, by, bz, ux, uy, uz, rho, Temp, $
             FORMAT = format_string
     FREE_lun, lun_IMF_log

     CLOSE, /ALL
     
  ENDFOR
  
  RETURN
  
END
