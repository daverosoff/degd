% Autonomous equations
% Math 352 Differential Equations
% February 26, 2014




# Warm-up

## Warm-up: equilibria

Suppose that $dQ/dt = Q^2 - Q - 2$.

Find all the constant functions $Q(t)$ that satisfy this DE.

These are called equilibrium solutions (equilibria for short)
because left undisturbed, they just stay put.

## Warm-up: in between equilibria

What is the behavior of $Q(t)$...

- if $-1 < Q_0 < 2$? 
- if $Q_0 > 2$?
- if $Q_0 < -1$?

What is the behavior of $Q(t)$...

- if $-1 < Q(1000000000) < 2$? 
- if $Q(1000000000) > 2$? 
- if $Q(1000000000) < -1$?

## Warm-up: stability

Suppose $Q = 2$ for all $t < 0$, but at $t = 0$, the system experiences
an abrupt local disruption. The disruption bumps $Q$ discontinuously,
so that $Q_0 \ne 2$ (but $\abs{Q_0 - 2}$ is still small). 

> - What is $\lim_{t\to\infty} Q(t)$ in this case?
> - What if we ask the same question about the other equilibrium solution?
> - If you are stuck, think about the equilibria of a pendulum that
can swing freely from its pivot to any angle. There are two! How are they different? 

# Autonomous equations

## Definition

> - Equations of the form $dy/dt = f(y)$ are called *autonomous*.
> - The word refers to the fact that the behavior of an autonomous
system is time-independent.
> - I don't know why this gets to be called "autonomy", but there you go.

## The phase line

Autonomous equations are easy to understand if we graph $f(y)$ against $y$.

This graph is called the phase line or phase plot.

<img src="figure/phase.pdf" title="plot of chunk phase" alt="plot of chunk phase" width="2" height="2" />


\begin{figure}[h!t]
\begin{minipage}[t]{0.45\textwidth}
    \vspace{0pt}
    \includegraphics[width=\linewidth, keepaspectratio=true]{figure/phase.pdf}
\end{minipage} \hspace{1cm} 
\begin{minipage}[t]{0.4\textwidth}
    \vspace{0pt}

    What is the relationship of the equilibria of
    \begin{equation*}
        y' = y^2 - y - 2
    \end{equation*}
    to this curve?
\end{minipage}
\end{figure}

## Drawing the solution curves

Having drawn the phase plot it's easy to draw a few solutions
in the $(t,y)$-plane.

Carry out the procedure for the following autonomous equations:

- $dy/dt = (y-1)(y-2)$
- $dP/dt = \alpha P (K-P)$, where $\alpha > 0$, $K > 0$
- $dQ/dt = rQ - k$, where $0 < r < 1$, $k > 0$
- $dz/dt = (z+1)(z-3)^2$

Classify the equilibria of each differential equation as
stable, unstable, or semistable.
