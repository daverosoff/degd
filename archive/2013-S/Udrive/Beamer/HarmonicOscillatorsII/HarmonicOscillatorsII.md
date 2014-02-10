Encoding:           UTF-8  
LaTeX Input:        mmd-beamer-header-rosoff  
Title:              Further investigation of harmonic vibration
Affiliation:        The College of Idaho  
Author:             Math 352 Differential Equations  
Date:               17 April 2013  
base header level:  2  
LaTeX Mode:         beamer  
LaTeX Input:        mmd-beamer-begin-doc-rosoff  
LaTeX Footer:       mmd-beamer-footer  
CSS:                https://docralphv.collegeofidaho.edu/~drosoff/mystyle.css
HTML Header:        <script type="text/javascript" src="https://docralphv.collegeofidaho.edu/mathjax/MathJax.js?config=TeX-AMS-MML_HTMLorMML"></script>
<style>p {text-align:justify;font-size:110%;}
li {text-align:justify;font-size:110%;}
</style>
HTML header level:  2  
# Recap

## Last time: free harmonic oscillations

Recall the equation of motion for an unforced spring-mass system:
\\[
    mu'' + \gamma u' + k u = 0,
\\]
where \\( m \\), \\( k > 0 \\) and \\( \gamma \geq 0\\).

If \\( \gamma = 0 \\), then our system is a simple harmonic oscillator, vibrating subject to the displacement function
\\[
    u = c_1 \cos{(\omega_0 t)} + c_2 \sin{(\omega_0 t)}.
\\]
Such a system's motion persists indefinitely. The energy added by the initial conditions stays in the system forever.

## Reduction to standard form

Every linear combination of sines and cosines with like frequency can be written as a single sinusoidal function. A sinusoidal function is one of the form
\\( R \cos{(\omega t - \delta)} \\),
where \\( R \\) is the amplitude, \\( \omega \\) is the common frequency, and \\( \delta \\) is the phase shift.

## Getting the new parameters

Suppose that we have already obtained \\( c_1 \\) and \\( c_2 \\) from the initial conditions and wish to find \\( R \\) and \\( \delta \\) with 
\\[
    c_1 \cos{(\omega_0 t)} + c_2 \sin{(\omega_0 t)} = R \cos{(\omega_0 t - \delta)}.
\\]
Using the cosine subtraction identity, we find this entails that
\\[
    c_1 \cos{(\omega_0 t)} + c_2 \sin{(\omega_0 t)} = R \cos{\delta} \cos{(\omega_0 t)} + R \sin{\delta} \sin{(\omega_0 t)}.
\\]
Hence \\( c_1 = R \cos{\delta} \\), \\( c_2 = R \sin{\delta} \\), and the usual polar-coordinate equations give us
\\[
    R = \sqrt{c_1^2 + c_2^2}, \tan{\delta} = c_2/c_1.
\\]
The arctangent function must be used with due care.
## Classification of damping; overdamped

If \\( \gamma > 0 \\), we refer to the system as "damped". The type of damping corresponds to the discriminant \\( D = \sqrt{\gamma^2 - 4km} \\) of the characteristic polynomial.

When \\( D > 0 \\), the roots of the characteristic polynomial are real *and negative*. This is the overdamped case, and the displacement function is a linear combination of two exponentials \\( e^{r_1 t} \\) and \\( e^{r_2 t} \\). Since \\( r_1 \\), \\( r_2 < 0 \\), the vibration decays as \\( t \\) increases.

## Underdamped; critically damped

When \\( D < 0 \\), the roots are complex *with negative real part*, so the oscillation again decays. Write \\( \lambda \pm i \mu \\) for the roots: then the displacement function is a linear combination of the functions \\( e^{\lambda t} \cos{(\mu t)} \\) and \\( e^{\lambda t} \sin{(\mu t)} \\).

<!--\pause-->

When \\( D = 0 \\), the system is *critically damped*. Then, there is only one root \\( r \\) of the characteristic polynomial. The displacement function is a linear combination of \\( e^{r t} \\) and \\( te^{rt} \\). The graphs of critically damped displacement functions look a lot like those of overdamped ones.

## The damped cases: three regimes

If \\( \gamma > 0 \\), then the initial energy is eventually (and in practice, quickly) dissipated in resisting the damping force of the surrounding fluid. Clearly, greater values of \\( \gamma \\) mean "more" damping is occurring. The correct way to measure the "size" of the damping is not via \\( \gamma \\) alone, but with a dimensionless coefficient involving all three constants \\( m \\), \\( \gamma \\), and \\( k \\).

## Damping and the discriminant

Let \\( Q = \gamma^2 / 4km \\). If you compare the dimensions of the three coefficients, you will see that \\( Q \\) is dimensionless: all the units cancel out of it. Dimensionless coefficients are important, because they don't depend on our scale of measurement. It turns out that \\( Q \\) is a nice code for the damping type of our system. 

- Trivially, \\( Q = 0 \\) when \\( \gamma = 0 \\).<!--\pause-->
- Our system is underdamped when \\( 0 < Q < 1 \\).<!--\pause-->
- Critical damping obtains when \\( Q = 1 \\).<!--\pause-->
- Overdamping is the case \\( Q > 1 \\).

## Quasiperiod and quasifrequency

The parameter \\( \mu \\) determines the quasifrequency of a damped oscillation (since it is not periodic, it doesn't have an honest "frequency"). Some algebra shows that
\\[
    \frac{\mu}{\omega_0} = \frac{\sqrt{4km - \gamma^2}}{2m \sqrt{k/m}} = \left( 1 - Q \right)^{1/2} \approx 1 - \frac{Q}{2}.
\\]
The last approximation is valid, as usual, when \\( Q \\) is small.

These calculations will be of great utility for us in the next section, which concerns *forced vibrations*.
Thus, small damping slightly reduces the frequency of the oscillation.