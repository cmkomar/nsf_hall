
;; !X.RANGE = [  00, 10 ]
;; !Y.RANGE = [ -10, 10 ]

;; func = 'jy by'
;; plotmode = 'contfillbarbody'

;; autorange = 'n'

;; fmin = [ -0.01, -30.0 ]
;; fmax = [  0.07,  30.0 ]

filename='run719/y=0*t00010000*.out'
.r getpict
by = w(*,*,5)
jy = w(*,*,9)

set_plot, 'ps'
device, FILENAME = 'y=0_Hall_Effect.eps', $
        XSIZE = 9.1, YSIZE = 5.1, /INCHES, $
        /COLOR, /ENCAPSULATED, /PORTRAIT, BITS_PER_PIXEL = 8

loadct, 3, /silent
;; .r plotfunc
loadct, 3,/silent
w,2,1
jy_min = -0.02
jy_max =  0.07
jy_levarr = findgen( 101 ) * (jy_max - jy_min) / 100. + jy_min

by_min = -30.0
by_max =  30.0
by_levarr = findgen( 101 ) * (by_max - by_min) / 100. + by_min

contour, jy, x(*,*,0), x(*,*,1), /fill,/irreg, levels= jy_levarr, $
         XRANGE = [ 0, 10 ], XTITLE = 'x [R_E]', $
         YRANGE = [ -10, 10 ], YTITLE = 'y [R_E]', $
         TITLE = 'jy'
contour, by, x(*,*,0), x(*,*,1), /fill,/irreg, levels= by_levarr, $
         XRANGE = [ 0, 10 ], XTITLE = 'x [R_E]', $
         YRANGE = [ -10, 10 ], YTITLE = 'y [R_E]', $
         TITLE = 'by'

device, /close

filename='run720/y=0*t00010000*.out'
.r getpict
by = w(*,*,5)
jy = w(*,*,9)

set_plot, 'ps'
device, FILENAME = 'y=0_Numerical_Eta.eps', $
        XSIZE = 9.1, YSIZE = 5.1, /INCHES, $
        /COLOR, /ENCAPSULATED, /PORTRAIT, BITS_PER_PIXEL = 8

loadct, 3, /silent
;; .r plotfunc
loadct, 3,/silent
w,2,1
jy_min = -0.02
jy_max =  0.07
jy_levarr = findgen( 101 ) * (jy_max - jy_min) / 100. + jy_min

by_min = -30.0
by_max =  30.0
by_levarr = findgen( 101 ) * (by_max - by_min) / 100. + by_min

contour, jy, x(*,*,0), x(*,*,1), /fill,/irreg, levels= jy_levarr, $
         XRANGE = [ 0, 10 ], XTITLE = 'x [R_E]', $
         YRANGE = [ -10, 10 ], YTITLE = 'y [R_E]', $
         TITLE = 'jy'
contour, by, x(*,*,0), x(*,*,1), /fill,/irreg, levels= by_levarr, $
         XRANGE = [ 0, 10 ], XTITLE = 'x [R_E]', $
         YRANGE = [ -10, 10 ], YTITLE = 'y [R_E]', $
         TITLE = 'by'

device, /close

filename='run721/y=0*t00010000*.out'
.r getpict
by = w(*,*,5)
jy = w(*,*,9)

set_plot, 'ps'
device, FILENAME = 'y=0_Constant_Eta.eps', $
        XSIZE = 9.1, YSIZE = 5.1, /INCHES, $
        /COLOR, /ENCAPSULATED, /PORTRAIT, BITS_PER_PIXEL = 8

loadct, 3, /silent
;; .r plotfunc
loadct, 3,/silent
w,2,1
jy_min = -0.02
jy_max =  0.07
jy_levarr = findgen( 101 ) * (jy_max - jy_min) / 100. + jy_min

by_min = -30.0
by_max =  30.0
by_levarr = findgen( 101 ) * (by_max - by_min) / 100. + by_min

contour, jy, x(*,*,0), x(*,*,1), /fill,/irreg, levels= jy_levarr, $
         XRANGE = [ 0, 10 ], XTITLE = 'x [R_E]', $
         YRANGE = [ -10, 10 ], YTITLE = 'y [R_E]', $
         TITLE = 'jy'
contour, by, x(*,*,0), x(*,*,1), /fill,/irreg, levels= by_levarr, $
         XRANGE = [ 0, 10 ], XTITLE = 'x [R_E]', $
         YRANGE = [ -10, 10 ], YTITLE = 'y [R_E]', $
         TITLE = 'by'

device, /close

filename='run722/y=0*t00010000*.out'
.r getpict
by = w(*,*,5)
jy = w(*,*,9)

set_plot, 'ps'
device, FILENAME = 'y=0_Anomalous_Eta.eps', $
        XSIZE = 9.1, YSIZE = 5.1, /INCHES, $
        /COLOR, /ENCAPSULATED, /PORTRAIT, BITS_PER_PIXEL = 8

loadct, 3, /silent
;; .r plotfunc
loadct, 3,/silent
w,2,1
jy_min = -0.02
jy_max =  0.07
jy_levarr = findgen( 101 ) * (jy_max - jy_min) / 100. + jy_min

by_min = -30.0
by_max =  30.0
by_levarr = findgen( 101 ) * (by_max - by_min) / 100. + by_min

contour, jy, x(*,*,0), x(*,*,1), /fill,/irreg, levels= jy_levarr, $
         XRANGE = [ 0, 10 ], XTITLE = 'x [R_E]', $
         YRANGE = [ -10, 10 ], YTITLE = 'y [R_E]', $
         TITLE = 'jy'
contour, by, x(*,*,0), x(*,*,1), /fill,/irreg, levels= by_levarr, $
         XRANGE = [ 0, 10 ], XTITLE = 'x [R_E]', $
         YRANGE = [ -10, 10 ], YTITLE = 'y [R_E]', $
         TITLE = 'by'

device, /close

openw, lun, 'Reconnection_Layer_Values.txt', /GET_LUN

filename='run719/1d*t00010000*.out'
.r getpict
ux = w(*,1)
uz = w(*,3)
bx = w(*,4)
bz = w(*,6)

ey = ( ux * bz - uz * bx )*1e-3
jy = w(*,9)*1e3
jymax = max(jy,imax)

upstream_index= 3
eta = 0.4E11
set_plot,'ps'

device, FILENAME = '1d_Hall_Effect.eps', $
        XSIZE = 6.8, YSIZE = 3.4, /INCHES, $
        /COLOR, /ENCAPSULATED, /PORTRAIT, BITS_PER_PIXEL = 8

w,2,1
plot, x, jy, $
      xtitle = 'x [R_E]', xrange=[5,10], $
      ytitle = 'jy [nA/m2]', yrange = [-20,70],/ys, $
      psym=-6
makeliney,x(imax-upstream_index),linestyle=2
makeliney,x(imax+upstream_index),linestyle=2
plot,x,ey, $
     xtitle = 'x [R_E]',xrange=[5,10], $
     ytitle = 'ey [mV/m]',yrange = [0, 5],/ys, $
     psym=-6	
makeliney,x(imax-upstream_index),linestyle=2
makeliney,x(imax+upstream_index),linestyle=2

device,/close

printf, lun, "#################################"
printf, lun, ""
printf, lun, 'Hall Effect: '
printf, lun, "max(jy)=",strtrim(STRING(jymax),2)
printf, lun, ""

printf, lun, "Magnetosphere Values:"
printf, lun, "bz=",strtrim(STRING(bz(imax-upstream_index)),2)
printf, lun, "vx=",strtrim(STRING(ux(imax-upstream_index)),2)
printf, lun, "ey=",strtrim(STRING(ey(imax-upstream_index)),2)
printf, lun, ""

printf, lun, "Magnetosheath Values:"
printf, lun, "bz=",strtrim(STRING(bz(imax+upstream_index)),2)
printf, lun, "vx=",strtrim(STRING(ux(imax+upstream_index)),2)
printf, lun, "ey=",strtrim(STRING(ey(imax+upstream_index)),2)
printf, lun, ""

filename='run720/1d*t00010000*.out'
.r getpict
ux = w(*,1)
uz = w(*,3)
bx = w(*,4)
bz = w(*,6)

ey = ( ux * bz - uz * bx )*1e-3
jy = w(*,9)*1e3
jymax = max(jy,imax)

upstream_index= 3
eta = 0.4E11
set_plot,'ps'

device, FILENAME = '1d_Numerical_Eta.eps', $
        XSIZE = 6.8, YSIZE = 3.4, /INCHES, $
        /COLOR, /ENCAPSULATED, /PORTRAIT, BITS_PER_PIXEL = 8

w,2,1
plot, x, jy, $
      xtitle = 'x [R_E]', xrange=[5,10], $
      ytitle = 'jy [nA/m2]', yrange = [-20,70],/ys, $
      psym=-6
makeliney,x(imax-upstream_index),linestyle=2
makeliney,x(imax+upstream_index),linestyle=2
plot,x,ey, $
     xtitle = 'x [R_E]',xrange=[5,10], $
     ytitle = 'ey [mV/m]',yrange = [0, 5],/ys, $
     psym=-6	
makeliney,x(imax-upstream_index),linestyle=2
makeliney,x(imax+upstream_index),linestyle=2

device,/close

printf, lun, "#################################"
printf, lun, ""
printf, lun, 'Numerical Eta: '
printf, lun, "max(jy)=",strtrim(STRING(jymax),2)
printf, lun, ""

printf, lun, "Magnetosphere Values:"
printf, lun, "bz=",strtrim(STRING(bz(imax-upstream_index)),2)
printf, lun, "vx=",strtrim(STRING(ux(imax-upstream_index)),2)
printf, lun, "ey=",strtrim(STRING(ey(imax-upstream_index)),2)
printf, lun, ""

printf, lun, "Magnetosheath Values:"
printf, lun, "bz=",strtrim(STRING(bz(imax+upstream_index)),2)
printf, lun, "vx=",strtrim(STRING(ux(imax+upstream_index)),2)
printf, lun, "ey=",strtrim(STRING(ey(imax+upstream_index)),2)
printf, lun, ""

filename='run721/1d*t00010000*.out'
.r getpict
ux = w(*,1)
uz = w(*,3)
bx = w(*,4)
bz = w(*,6)

ey = ( ux * bz - uz * bx )*1e-3
jy = w(*,9)*1e3
jymax = max(jy,imax)

upstream_index= 5
eta = 0.4E11
set_plot,'ps'

device, FILENAME = '1d_Constant_Eta.eps', $
        XSIZE = 6.8, YSIZE = 3.4, /INCHES, $
        /COLOR, /ENCAPSULATED, /PORTRAIT, BITS_PER_PIXEL = 8

w,2,1
plot, x, jy, $
      xtitle = 'x [R_E]', xrange=[5,10], $
      ytitle = 'jy [nA/m2]', yrange = [-20,70],/ys, $
      psym=-6
makeliney,x(imax-upstream_index),linestyle=2
makeliney,x(imax+upstream_index),linestyle=2
plot,x,ey, $
     xtitle = 'x [R_E]',xrange=[5,10], $
     ytitle = 'ey [mV/m]',yrange = [0, 5],/ys, $
     psym=-6	
makeliney,x(imax-upstream_index),linestyle=2
makeliney,x(imax+upstream_index),linestyle=2

device,/close

printf, lun, "#################################"
printf, lun, ""
printf, lun, 'Constant Eta: '
printf, lun, "max(jy)=",strtrim(STRING(jymax),2)
printf, lun, ""

printf, lun, "Magnetosphere Values:"
printf, lun, "bz=",strtrim(STRING(bz(imax-upstream_index)),2)
printf, lun, "vx=",strtrim(STRING(ux(imax-upstream_index)),2)
printf, lun, "ey=",strtrim(STRING(ey(imax-upstream_index)),2)
printf, lun, ""

printf, lun, "Magnetosheath Values:"
printf, lun, "bz=",strtrim(STRING(bz(imax+upstream_index)),2)
printf, lun, "vx=",strtrim(STRING(ux(imax+upstream_index)),2)
printf, lun, "ey=",strtrim(STRING(ey(imax+upstream_index)),2)
printf, lun, ""

filename='run722/1d*t00010000*.out'
.r getpict
ux = w(*,1)
uz = w(*,3)
bx = w(*,4)
bz = w(*,6)

ey = ( ux * bz - uz * bx )*1e-3
jy = w(*,9)*1e3
jymax = max(jy,imax)

upstream_index= 7
eta = 0.4E11
set_plot,'ps'

device, FILENAME = '1d_Anomalous_Eta.eps', $
        XSIZE = 6.8, YSIZE = 3.4, /INCHES, $
        /COLOR, /ENCAPSULATED, /PORTRAIT, BITS_PER_PIXEL = 8

w,2,1
plot, x, jy, $
      xtitle = 'x [R_E]', xrange=[5,10], $
      ytitle = 'jy [nA/m2]', yrange = [-20,70],/ys, $
      psym=-6
makeliney,x(imax-upstream_index),linestyle=2
makeliney,x(imax+upstream_index),linestyle=2
plot,x,ey, $
     xtitle = 'x [R_E]',xrange=[5,10], $
     ytitle = 'ey [mV/m]',yrange = [0, 5],/ys, $
     psym=-6	
makeliney,x(imax-upstream_index),linestyle=2
makeliney,x(imax+upstream_index),linestyle=2

device,/close

printf, lun, "#################################"
printf, lun, ""
printf, lun, 'Anomalous Eta: '
printf, lun, "max(jy)=",strtrim(STRING(jymax),2)
printf, lun, ""

printf, lun, "Magnetosphere Values:"
printf, lun, "bz=",strtrim(STRING(bz(imax-upstream_index)),2)
printf, lun, "vx=",strtrim(STRING(ux(imax-upstream_index)),2)
printf, lun, "ey=",strtrim(STRING(ey(imax-upstream_index)),2)
printf, lun, ""

printf, lun, "Magnetosheath Values:"
printf, lun, "bz=",strtrim(STRING(bz(imax+upstream_index)),2)
printf, lun, "vx=",strtrim(STRING(ux(imax+upstream_index)),2)
printf, lun, "ey=",strtrim(STRING(ey(imax+upstream_index)),2)
printf, lun, ""

close,lun
