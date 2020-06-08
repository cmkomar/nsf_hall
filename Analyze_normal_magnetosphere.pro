
filename = "run729.2/1d*t00020000* run730/1d*t0002* run731/1d*t0002*"

.r getpict

mu_0 = !PI * 4e-7

xx_num = x0

ux_num = w0( *, 1 )
uy_num = w0( *, 2 )
uz_num = w0( *, 3 )

bx_num = w0( *, 4 )
by_num = w0( *, 5 )
bz_num = w0( *, 6 )

jy_num = w0( *, 9 )
jmax_num = MAX( jy_num, imax_num )

ex_num = ( uz_num * by_num - uy_num * bz_num )
ey_num = ( ux_num * bz_num - uz_num * bx_num )
ez_num = ( uy_num * bx_num - ux_num * by_num )

xx_PhD = x1

ux_PhD = w1( *, 1 )
uy_PhD = w1( *, 2 )
uz_PhD = w1( *, 3 )

bx_PhD = w1( *, 4 )
by_PhD = w1( *, 5 )
bz_PhD = w1( *, 6 )

jy_PhD = w1( *, 9 )
jmax_PhD = MAX( jy_PhD, imax_PhD )

ex_PhD = ( uz_PhD * by_PhD - uy_PhD * bz_PhD )
ey_PhD = ( ux_PhD * bz_PhD - uz_PhD * bx_PhD )
ez_PhD = ( uy_PhD * bx_PhD - ux_PhD * by_PhD )

xx_exp = x2

ux_exp = w2( *, 1 )
uy_exp = w2( *, 2 )
uz_exp = w2( *, 3 )

bx_exp = w2( *, 4 )
by_exp = w2( *, 5 )
bz_exp = w2( *, 6 )

jy_exp = w2( *, 9 )
jmax_exp = MAX( jy_exp, imax_exp )

ex_exp = ( uz_exp * by_exp - uy_exp * bz_exp )
ey_exp = ( ux_exp * bz_exp - uz_exp * bx_exp )
ez_exp = ( uy_exp * bx_exp - ux_exp * by_exp )

CLEANPLOT
!X.RANGE = [ 3, 15 ]
;!Y.RANGE = [ -5.0, 30.0 ]

window_num = 0

W, 1, 1
LOADCT, 0, /SILENT
WINDOW, window_num
PLOT,  xx_num, jy_num, PSYM = -6, LINESTYLE = 0, /XS
OPLOT, xx_PhD, jy_PhD, PSYM = 1
OPLOT, xx_exp, jy_exp, PSYM = 2

window_num = window_num + 1

WINDOW, window_num, TITLE = "Numerical Eta"
PLOT,  xx_num, jy_num, PSYM = -6, LINESTYLE = 0, /XS
OPLOT, xx_num, ey_num, PSYM = -7, LINESTYLE = 2
window_num = window_num + 1

WINDOW, window_num, TITLE = "PhD Eta"
PLOT,  xx_PhD, jy_PhD, PSYM = -6, LINESTYLE = 0, /XS
OPLOT, xx_PhD, ey_PhD, PSYM = -7, LINESTYLE = 2
window_num = window_num + 1

WINDOW, window_num, TITLE = "Explicit Eta"
PLOT,  xx_exp, jy_exp, PSYM = -6, LINESTYLE = 0, /XS
OPLOT, xx_exp, ey_exp, PSYM = -7, LINESTYLE = 2
window_num = window_num + 1

eta_num = $
   ey_num( imax_num : imax_num + 5 ) / jmax_num / mu_0
eta_PhD = $
   ey_PhD( imax_PhD : imax_PhD + 6 ) / jmax_PhD / mu_0
eta_exp = $
   ey_exp( imax_exp : imax_exp + 8 ) / jmax_exp / mu_0

PRINT, "Numerical Eta: ", eta_num
PRINT, "PhD Eta: ", eta_PhD
PRINT, "Explicit Eta: ", eta_exp

filename = $
   "run729.2/y=0*t00020000* run730/y=0*t0002* run731/y=0*t0002*"

.r getpict

!X.RANGE = [ 0, 15 ]
!Y.RANGE = [ -7.5, 7.5 ]

plotmode = "contfillbarbody"
func = "jy"

.r plotfunc

