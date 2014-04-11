Encoding:           UTF-8  
LaTeX Input:        mmd-beamer-header-rosoff  
Title:              Forced oscillations, II
Affiliation:        The College of Idaho  
Author:             Math 352 Differential Equations  
Date:               24 April 2013  
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
# Recap: forced oscillations

## Transient and steady-state decomposition

Our oscillations are controlled by the differential equation
\\[
    mu'' + \gamma u' + ku = F(t).
\\]
Today we will look briefly at the case \\( \gamma > 0 \\). When we think about the general solution to this forced, damped equation, we regard it as usual in two pieces:
\\[
    u_c + U
\\]
where \\( u_c \\) is the general solution of the associated homogeneous equation (the same system, but unforced) and \\( U \\) is a particular solution.

## Why "transient" and "steady-state"?
- Observe that \\( u_c \to 0 \\) as \\( t \to \infty \\). Therefore the effects of the initial conditions are ephemeral, which is why we call \\( u_c \\) the *transient* part of the solution, and \\( U \\) the *steady-state* solution. If one returns to the system after time has passed, only the \\( U \\)-behavior of the system is evident.

- The steady-state \\( U \\) is also often called the *forced response* of the system to the forcing function \\( F \\). 

- Observe how the decomposition of the response into \\( u_c + U \\) mirrors the decomposition of the system into internal (\\( m \\), \\( \gamma \\), \\( k \\), \\( c_1 \\), \\( c_2 \\)) and external (\\( F(t) \\)) factors. This is what mathematicians and physicists mean by *elegance*.

## The solution

- As before, if we assume that \\( F(t) = F_0 \cos{(\omega t)} \\), we may write \\( U(t) = R \cos{(\omega t - \delta)} \\) for some amplitude \\( R \\) and phase shift \\( \delta \\). These constants are determined by the formulas
\\[
    R = \frac{F_0}{\Delta}, \quad \cos \delta = \frac{m(\omega_0^2 - \omega^2)}{\Delta}, \quad \sin \delta = \frac{\gamma \omega}{\Delta},
\\]
where \\( \Delta = \sqrt{m^2(\omega_0^2 - \omega^2)^2 + \gamma^2 \omega^2} \\).

- We can use these formulas to compare \\( R \\), the amplitude of the forced response, to \\( F_0/k \\), the length by which the spring is stretched when subjected to a constant force of magnitude \\( F_0 \\). This depends on \\( \omega \\).

## Amplitude from frequency

- It turns out that, if we let \\( \Gamma = \gamma^2/mk \\) (so that it is a constant multiple of \\( Q \\) from last time), we obtain
\\[
    \frac{Rk}{F_0} = \left( \left( 1 - \frac{\omega^2}{\omega_0^2} \right)^2 + \Gamma \frac{\omega^2}{\omega_0^2} \right)^{-1/2}.
\\]

- When \\( \omega \approx 0 \\), this number is very close to \\( 1 \\), or in other words, \\( R \approx F_0/k \\). This matches with our physical intuition.

- When \\( \omega \gg 0 \\), \\( R \\) is small. Extremely high frequency excitation produces a negligible vibration (think of the child kicking his feet in the swings).

## Where is the maximum amplitude?
\\[
    \frac{Rk}{F_0} = \left( \left( 1 - \frac{\omega^2}{\omega_0^2} \right)^2 + \Gamma \frac{\omega^2}{\omega_0^2} \right)^{-1/2}
\\]

- The right-hand side can be regarded as a function of \\( \omega \\). It should attain a maximum (the greatest forced amplitude achievable) for some \\( \omega_{\mathrm{max}} \\). Some tedious algebra shows that 
\\[
    \omega_{\mathrm{max}} = \omega_0^2 - \frac{\gamma^2}{2m^2} = \omega_0^2 \left( 1 - \frac{\gamma^2}{2mk} \right).
\\]

- Observe that \\( \omega_{\mathrm{max}} < \omega_0 \\) and that when \\( \gamma \\) is small, these values are very close.

- The textbook has a more detailed discussion of the variance of \\(Rk/F_0\\) with \\(\omega/\omega_0\\). I encourage you to read it closely.

## Wrap-up

In particular, the amplitude achieved when \\( \omega = \omega_{\mathrm{max}} \\) is given by
\\[
    R_{\mathrm{max}} = \frac{F_0}{\gamma \omega_0 \sqrt{1-Q}} \approx \frac{F_0}{\gamma \omega_0} \left( 1 + \frac{Q}{2} \right).
\\]
Evidently, the approximation fails if \\( Q > 1 \\). In fact, if \\( Q > 1/2 \\), then \\( \omega_{\mathrm{max}} \\) is a complex number, and \\( R \\) is a monotone decreasing function of \\( \omega \\).

# Our last topic: Higher-order equations

## Introduction to higher-order equations

In practice, the linear differential equation
\\[
    a_n y^{(n)} + \cdots + a_1 y' + a_0 y = g(t)
\\]
is solved by converting it to a system of \\( n \\) first-order differential equations.

Recall that the equation \\( y' = ay \\) has general solution of exponential type:
\\[
    y = ce^{at}.
\\]

A system of such equations also has a general solution of exponential type, as we shall see.

## Matrices and vectors

The solution of such systems is facilitated by a new kind of algebra. An \\( m \times n \\) matrix is an array of numbers (for us, real numbers, also eventually complex numbers inevitably arise) like this:
<!--
\[
    A = \begin{pmatrix}
        1 & 4 & 6 & -3 \\
        2 & -2 & 0 & 7
    \end{pmatrix}.
\]
-->
Here, \\( m = 2 \\) and \\( n = 4 \\). We always list the row-index first. The same goes if we want to leave the entries (the numbers in the matrix) anonymous: 
<!--
\[
    A = \begin{pmatrix}
        a_{11} & a_{12} & a_{13} & a_{14} \\
        a_{21} & a_{22} & a_{23} & a_{24}
        \end{pmatrix}.
\]
-->