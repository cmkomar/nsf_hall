
logfilename = 'run719/IE*.log run720/IE*.log run721/IE*.log run724/IE*.log '
read_log_data

SET_PLOT, 'PS'
DEVICE, FILENAME='CPCPN.eps', $
        XSIZE = 6.8, YSIZE = 5.1, /INCHES, $
        /COLOR, /ENCAPSULATED, /PORTRAIT, BITS_PER_PIXEL = 8

LOADCT, 0, /SILENT

PLOT, logtime, wlog( *, 9 ), $
      XRANGE = [0., 1.], /XS, XTHICK = 3, XTITLE = 'Time [ hours ]', $
      YRANGE = [0., 360.], /YS, YTHICK = 3, YTITLE = 'CPCPN [ kV ]', $
      LINESTYLE = 0, THICK = 3, $
      CHARSIZE = 2, CHARTHICK = 3

TVLCT, 255, 000, 000, 101
TVLCT, 000, 000, 255, 102
TVLCT, 255, 000, 255, 103
OPLOT, logtime1, wlog1( *, 9 ), $
       LINESTYLE = 2, THICK = 3, COLOR = 101
OPLOT, logtime2, wlog2( *, 9 ), $
       LINESTYLE = 3, THICK = 3, COLOR = 102
OPLOT, logtime3, wlog3( *, 9 ), $
       LINESTYLE = 4, THICK = 3, COLOR = 103
LEGEND, $
   [ 'Hall', 'Numerical', 'Explicit', 'Anomalous' ], $
   COLOR = [ 0, 101, 102, 103 ], LINESTYLE = [ 0, 2, 3, 4 ], $
   THICK = 3, /TOP, /RIGHT, $
   NUMBER = 0.5, CHARSIZE = 1.25, $
   POSITION = [ 0.90, 0.85 ], /NORM


DEVICE, /CLOSE

DEVICE, FILENAME='CPCPS.eps', $
        XSIZE = 6.8, YSIZE = 5.1, /INCHES, $
        /COLOR, /ENCAPSULATED, /PORTRAIT, BITS_PER_PIXEL = 8

LOADCT, 0, /SILENT

PLOT, logtime, wlog( *, 10 ), $
      XRANGE = [0., 1.], /XS, XTHICK = 3, XTITLE = 'Time [ hours ]', $
      YRANGE = [0., 360.], /YS, YTHICK = 3, YTITLE = 'CPCPS [ kV ]', $
      LINESTYLE = 0, THICK = 3, $
      CHARSIZE = 2, CHARTHICK = 3

TVLCT, 255, 000, 000, 101
TVLCT, 000, 000, 255, 102
TVLCT, 255, 000, 255, 103
OPLOT, logtime1, wlog1( *, 10 ), $
       LINESTYLE = 2, THICK = 3, COLOR = 101
OPLOT, logtime2, wlog2( *, 10 ), $
       LINESTYLE = 3, THICK = 3, COLOR = 102
OPLOT, logtime3, wlog3( *, 10 ), $
       LINESTYLE = 4, THICK = 3, COLOR = 103
LEGEND, $
   [ 'Hall', 'Numerical', 'Explicit', 'Anomalous' ], $
   COLOR = [ 0, 101, 102, 103 ], LINESTYLE = [ 0, 2, 3, 4 ], $
   THICK = 3, /TOP, /RIGHT, $
   NUMBER = 0.5, CHARSIZE = 1.25, $
   POSITION = [ 0.90, 0.85 ], /NORM


DEVICE, /CLOSE

SET_PLOT, 'X'

END
