Encoding:           UTF-8  
LaTeX Input:        mmd-beamer-header-rosoff  
Title:              Further investigation of harmonic vibration
Affiliation:        The College of Idaho  
Author:             Math 352 Differential Equations  
Date:               19 April 2013  
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
# Forced oscillations

## Inhomogeneous equations

Up until now, we have been looking at *free* vibrations, controlled by the differential equation
\\[
    mu'' + \gamma u' + ku = 0.
\\]

When external forces are present, we typically add them together and regard them as the inhomogeneous term in the equation
\\[
    mu'' + \gamma u' + ku = F(t).
\\]

## Good news

We already know how to solve this equation for a large class of forcing functions \\( F(t) \\), using the methods of undetermined coefficients and variation of parameters.

- FYI: other methods exist, in particular the method of *Laplace transforms*, that are even better suited to *discontinuous* forcing functions such as square waves.

## What else is there to say?

Recall that in the free damped case (\\( F(t) = 0,\, \gamma > 0 \\)), the displacement decays to zero with increasing time. Therefore, when we think about the general solution to the forced, damped equation, we regard it as usual in two pieces:
\\[
    y_c + Y
\\]
and since we know that \\( y_c \to 0 \\) as \\( t \to \infty \\), we call \\( y_c \\) the *transient* part of the solution, and \\( Y \\) the *steady-state* solution. 

## Transient and steady-state

Recall also that in solving an instance of this equation, the coefficients \\( c_1 \\) and \\( c_2 \\) are determined only by the initial conditions, and the steady-state solution is independent of them.

<!-- 
\begin{block}{Dual nature of solutions}
    The forcing function alone determines the steady-state solution; initial conditions only affect the transient.
\end{block}
 -->

## Beats: when frequencies are near

Of particular interest are cases where the forcing function is sinusoidal, with frequency close to the natural (undamped) frequency \\( \omega_0 \\). Let \\( \omega \\) be the forcing frequency and \\( F_0 \\) the forcing amplitude, so that \\( F(t) = F_0 \cos{(\omega t)} \\). The equation of motion becomes
\\[
    u'' + \omega_0^2 u = \frac{F_0}{m} \cos{(\omega t)}.
\\]
According to our general principles, the particular solution should be of the form \\( Y = A \cos{(\omega t)} + B \sin{(\omega t)} \\). But in fact one can show that \\( B = 0 \\).

## Beats: the particular solution

Furthermore, one can show that \\( A = \frac{F_0/m}{\omega_0^2 - \omega^2} \\), so that 
\\[
    u = c_1 \cos{(\omega_0 t)} + c_2 \sin{(\omega_0 t)} + \frac{F_0/m}{\omega_0^2 - \omega^2} \cos{(\omega t)}.
\\]
If the system starts from equilibrium, one can show[^ex1] that 
\\[
    c_1 = -\frac{F_0/m}{\omega_0^2 - \omega^2}, \quad c_2 = 0.
\\]
The displacement function is thus determined to be
\\[
    u = \frac{F_0/m}{\omega_0^2 - \omega^2} \left( \cos{(\omega t)} - \cos{(\omega_0 t)} \right).
\\]

## We got the beat

We now use the trigonometric identity 
\\[
    \cos{(\alpha - \beta)} - \cos{(\alpha + \beta)} = 2 \sin \alpha \sin \beta
\\]
to rewrite this as
\\[
    u(t) = \left( \frac{2F_0/m}{\omega_0^2 - \omega^2} \sin{\frac{\omega_0 - \omega}{2} t} \right) \sin{\frac{\omega_0 + \omega}{2} t}.
\\]

We can interpret the equation as a fast oscillation *modulated* by a slow one, since \\( \omega_0 \approx \omega \\).

## Resonance

What happens when \\( \omega_0 = \omega \\)? Roughly speaking, the period of the slow oscillation becomes infinite. Therefore we should see a steadily increasing amplitude for the fast oscillation. The differential equation is degenerate, and the particular solution ends up being
\\[
    Y = \frac{F_0}{2m \omega_0}t \sin{(\omega_0 t)}.
\\]
If the initial conditions are again \\( u(0) = u'(0) = 0 \\), both coefficients \\( c_1 \\) and \\( c_2 \\) vanish. Therefore the displacement is given by
\\[
    u = Y = \frac{F_0}{2m \omega_0}t \sin{(\omega_0 t)}.
\\]
Observe that \\( \lim_{t \to \infty} u = \infty \\), as advertised.

## An explanation

"The following argument may shed some light on resonance phenomena. A system has the minimum resistance to oscillations at its natural frequency \\( \omega_0 \\), since it will oscillate at \\( \omega_0 \\) when it is not disturbed. When an external effect forces the system to oscillate at a different frequency, the system will resist because it does not feel comfortable oscillating at an unnatural frequency. But when the external effect forces the system to oscillate at its natural frequency, the system will gladly cooperate since the request is in perfect compliance with its intrinsic characteristics." From <!--\c{C}-->engel and Palm


[^ex1]: It would be an excellent exercise to carry out the details of these assertions.