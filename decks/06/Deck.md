% Recap of second-order homogeneous equations
% Math 352 Differential Equations
% March 17, 2014

# Recap

## Second-order homogeneous linear equations

We have completed the solution of the equation

\begin{equation*}
    ay'' + by' + cy = 0.    
\end{equation*}

It proceeds by analysis of the characteristic
polynomial $ar^2 + br + c = 0$.

## Positive discriminant

If the discriminant $b^2 - 4ac$ is positive, then
the characteristic polynomial has two real roots,
$r_1$ and $r_2$. Thus
\begin{equation*}
    y_1 = e^{r_1 t}, \quad y_2 = e^{r_2 t}
\end{equation*}
are solutions of the equation.

The Wronskian $W(y_1, y_2)$ is nonzero everywhere,
and it follows from section 3.2 that the general
solution is
\begin{equation*}
    c_1 e^{r_1 t} +  c_2 e^{r_2 t}.
\end{equation*}

## Negative discriminant

If the discriminant $b^2-4ac$ is negative, then
the characteristic polynomial are:
\begin{equation*}
    r = \lambda \pm i \mu.
\end{equation*}
(Complex roots of real polynomials occur in 
conjugate pairs.)

We used Euler's formula to interpret the complex exponentials
and obtained real-valued solutions
\begin{equation*}
    y_1 = e^{\lambda t} \cos{\mu t}, \quad 
    y_2 = e^{\lambda t} \sin{\mu t}.
\end{equation*}

The Wronskian of these is again nonzero, so they generate the
general solution.

## Zero discriminant

If the discriminant $b^2 - 4ac$ is 0, then the characteristic
polynomial has a single real root $-b/2a$. We worked out an
example in Workshop 06 showing that in addition to the 
exponential solution coming from this root, there is another:
\begin{equation*}
    y_2 = te^{(-b/2a)t}
\end{equation*}

The general solution is therefore
\begin{equation*}
    c_1 e^{(-b/2a)t} + c_2 t e^{(-b/2a)t}
\end{equation*}
