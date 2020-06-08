
filepath = '~/Research/NSF_Hall/'

CD, filepath
filename = 'run*/1d*'

read_data

 xx_Hall_1x = REFORM( x0 )

rho_Hall_1x = REFORM( w0( *, 00 ) )

 ux_Hall_1x = REFORM( w0( *, 01 ) )
 uy_Hall_1x = REFORM( w0( *, 02 ) )
 uz_Hall_1x = REFORM( w0( *, 03 ) )

 bx_Hall_1x = REFORM( w0( *, 04 ) )
 by_Hall_1x = REFORM( w0( *, 05 ) )
 bz_Hall_1x = REFORM( w0( *, 06 ) )
 
  p_Hall_1x = REFORM( w0( *, 07 ) )

 jx_Hall_1x = REFORM( w0( *, 08 ) )
 jy_Hall_1x = REFORM( w0( *, 09 ) )
 jz_Hall_1x = REFORM( w0( *, 10 ) )

 xx_Explicit = REFORM( x1 )

rho_Explicit = REFORM( w1( *, 00 ) )

 ux_Explicit = REFORM( w1( *, 01 ) )
 uy_Explicit = REFORM( w1( *, 02 ) )
 uz_Explicit = REFORM( w1( *, 03 ) )

 bx_Explicit = REFORM( w1( *, 04 ) )
 by_Explicit = REFORM( w1( *, 05 ) )
 bz_Explicit = REFORM( w1( *, 06 ) )
 
  p_Explicit = REFORM( w1( *, 07 ) )

 jx_Explicit = REFORM( w1( *, 08 ) )
 jy_Explicit = REFORM( w1( *, 09 ) )
 jz_Explicit = REFORM( w1( *, 10 ) )

 xx_Numerical = REFORM( x2 )

rho_Numerical = REFORM( w2( *, 00 ) )

 ux_Numerical = REFORM( w2( *, 01 ) )
 uy_Numerical = REFORM( w2( *, 02 ) )
 uz_Numerical = REFORM( w2( *, 03 ) )

 bx_Numerical = REFORM( w2( *, 04 ) )
 by_Numerical = REFORM( w2( *, 05 ) )
 bz_Numerical = REFORM( w2( *, 06 ) )

  p_Numerical = REFORM( w2( *, 07 ) )

 jx_Numerical = REFORM( w2( *, 08 ) )
 jy_Numerical = REFORM( w2( *, 09 ) )
 jz_Numerical = REFORM( w2( *, 10 ) )
 
 xx_Hall_2x = REFORM( x3 )

rho_Hall_2x = REFORM( w3( *, 00 ) )

 ux_Hall_2x = REFORM( w3( *, 01 ) )
 uy_Hall_2x = REFORM( w3( *, 02 ) )
 uz_Hall_2x = REFORM( w3( *, 03 ) )

 bx_Hall_2x = REFORM( w3( *, 04 ) )
 by_Hall_2x = REFORM( w3( *, 05 ) )
 bz_Hall_2x = REFORM( w3( *, 06 ) )
 
  p_Hall_2x = REFORM( w3( *, 07 ) )

 jx_Hall_2x = REFORM( w3( *, 08 ) )
 jy_Hall_2x = REFORM( w3( *, 09 ) )
 jz_Hall_2x = REFORM( w3( *, 10 ) )



 PLOT, xx_Hall_1x, rho_Hall_1x, PSYM = -6, XR = [ 2.5, 10 ]
OPLOT, xx_Hall_2x, rho_Hall_2x, PSYM =  4
OPLOT, xx_Numerical, rho_Numerical, PSYM =  5
OPLOT, xx_Explicit, rho_Explicit, PSYM =  7

R_E = 6.371e6
m_i = 1.67e-27
mu = 100.
e = 1.602e-19
clight = 2.9979e8
mu_0 = !PI * 4e-7
eps_0 = 1 / mu_0 / clight^2


Z_Hall_1x = 1
wpi_Hall_1x = $
   SQRT( rho_Hall_1x * 1e3 * ( Z_Hall_1x * e )^2 / eps_0 / mu / m_i )
di_Hall_1x = clight / wpi_Hall_1x

Z_Hall_2x = 0.5
wpi_Hall_2x = $
   SQRT( rho_Hall_2x * 1e3 * ( Z_Hall_2x * e )^2 / eps_0 / mu / m_i )
di_Hall_2x = clight / wpi_Hall_2x

Z_Explicit = 1
wpi_Explicit = $
   SQRT( rho_Explicit * 1e3 * ( Z_Explicit * e )^2 / eps_0 / mu / m_i )
di_Explicit = clight / wpi_Explicit

Z_Numerical = 1
wpi_Numerical = $
   SQRT( rho_Numerical * 1e3 * ( Z_Numerical * e )^2 / eps_0 / mu / m_i )
di_Numerical = clight / wpi_Numerical

 PLOT, xx_Hall_1x, di_Hall_1x / R_E, PSYM = -6, XR = [ 2.5, 12.5 ],/xs
OPLOT, xx_Hall_2x, di_Hall_2x / R_E, PSYM =  4
OPLOT, xx_Numerical, di_Numerical / R_E, PSYM =  5
OPLOT, xx_Explicit, di_Explicit / R_E, PSYM =  7
makelinex, 1./8.
makelinex, 1./16.
makelinex, 1./32.

xloc_numerical = $
   WHERE( xx_numerical GE 2.5 AND xx_numerical LE 12.5)

jmax_numerical = max( jy_numerical( xloc_numerical ) )

ey_numerical = $
   ux_numerical * bz_numerical - uz_numerical * bx_numerical

plot, xx_numerical( xloc_numerical ), $
      ey_numerical( xloc_numerical ) / jmax_numerical

END
