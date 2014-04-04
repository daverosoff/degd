% Free harmonic oscillators
% Math 352 Differential Equations
% April 4, 2014

# Introduction

## Second-order phenomena in nature

- When $b^2 - 4ac < 0$, we observe phenomena that oscillate with decay.
- If in addition $b = 0$, the fundamental solutions are pure sinusoidal
(no exponential modulation).
- This is called *simple harmonic oscillation*.
- The simplest example is a spring-mass system.

## The equation of motion

The simplest physical model of a free harmonic oscillator is the vibrating 
spring, subject to Hooke's law (for the spring's 
restoring force) and viscous damping. The equation of motion (from Newton's 
Second Law) is: 
\begin{equation*}
    mu'' = mg + F_s + F_d + F
\end{equation*}
where $F_s$ is the spring restoring force, $F_d$ is the *damping* due to air 
resistance, and $F$ is any other external force applied to the system.

## The forces

- Hooke's Law: $F_s = -k(L + u)$
- Viscous damping: $F_d = -\gamma u'$
- Unforced vibration: $F = 0$

Hooke's Law is certainly valid for small displacements $u$. Similarly, 
damping due to air resistance is approximately viscous when $u'$ is not too 
big. We shall take up the case $F \ne 0$ in the next section.

## The equation

Hooke's Law implies that $mg = kL$, so we can rewrite 
the equation of motion as
\begin{equation*}
    mu'' + \gamma u' + ku = 0.
\end{equation*}

- In practice, $k$ is determined by using the equation above and a measured
value of $L$.

Let us first examine the case $\gamma = 0$, the *undamped free oscillation*.

## UFO

The characteristic equation is $mr^2 + k = 0$. This has two pure imaginary roots, $r = \pm i \sqrt{k/m}$.

Hence, the general solution to the equation for the UFO is the general sinusoidal function with frequency $\omega_0 = \sqrt{k/m}$.

The amplitude of the system is related to the total energy. Since $\gamma = 0$, all energy put into the system by the initial conditions will stay there forever.

## With damping

When $\gamma > 0$, the air resistance eventually consumes all the energy imparted by the system to the initial conditions.
\begin{equation*}
    \lim_{t \to \infty} u = 0.
\end{equation*}
There are three kinds of damping.

- Underdamped: $D = \sqrt{\gamma^2 - 4mk} < 0$.
- Overdamped: $D > 0$.
- Critically damped: $D = 0$.
