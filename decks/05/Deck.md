% Euler's formula and sinusoidal solutions
% Math 352 Differential Equations
% March 12, 2014

# Recap

## Last time: the exponential trick

This week, we've been investigating the second-order homogeneous equation
\begin{equation*}
   ay'' + by' + cy = 0.
\end{equation*}

- Monday, we saw how to find solutions of exponential type $y = ce^{rt}$. The
growth constants $r$ that "work" are the roots of the characteristic
equation $ar^2 + br + c = 0$.
- When $b^2-4ac > 0$ (the characteristic polynomial has *positive
discriminant*), we get two values $r_1$ and $r_2$.
- Hence we obtain two solutions, $y_1 = e^{r_1 t}$ and $y_2 = e^{r_2 t}$.

## Last time: superposition

We also know that solutions of *linear homogeneous equations* can be linearly
combined to get more solutions. Therefore, we have a 2-dimensional family of
solutions

\begin{equation*}
  c_1 y_1 + c_2 y_2.
\end{equation*}

\begin{block}{Exercise}

Use the Wronskian (and Theorem 3.2.4) to show that when $b^2 - 4ac > 0$, the 
solutions $y_1$ and $y_2$ described above generate all solutions to $ay'' + 
by' + cy = 0$.

\end{block}

## Negative discriminant

None of this tells what happens when $b^2 - 4ac < 0$. The existence theorem
still applies, so the solutions have to be out there somewhere. If we expand
our thinking to the realm of *complex numbers*, we can get them using the 
same trick.

\begin{block}{Definition}

A \emph{complex number} is a symbol $x + iy$, where $x$ and $y$ are ordinary
(i.e., real) numbers. We adopt two conventions:

\begin{enumerate}[i.]
\item these numbers obey all the rules of arithmetic;
\item $i^2 + 1 = 0$.
\end{enumerate}
\end{block}

## Why bother?

- We need roots of $ar^2 + br + c = 0$ when $b^2 - 4ac < 0$.
> - They are not real, but instead complex numbers.
- Note: a number of the form $iy$, where $y$ is real, can be called 
"imaginary". But $x + iy$ is called "complex" when $x \ne 0$.
- But if you refer to $x + iy$ as imaginary and $x \ne 0$, you will
sound like the worst sort of ill-mannered oaf.
- Push-ups will be assessed for infractions

## Why does it work?

\begin{block}{Fundamental Theorem of Algebra}

Each polynomial of degree $n$ with complex
(coefficients has exactly $n$ complex roots, counting multiplicities.
(Equivalently, each such polynomial splits over the complex numbers into $n$
(not necessarily distinct) linear factors.

\end{block}

This theorem was known to Euler, but it is widely asserted that the first
satisfactory proofs were due to Gauss (1777--1855).

# Complex polynomials

## Getting solutions
  
Observe that if $D < 0$, then $D = -|D| = i^2 |D|$. We use this to 
generalize the quadratic formula to complex numbers:

\begin{block}{Square roots of negative numbers}
We agree to interpret (when $D = b^2 - 4ac < 0$) the symbol $\sqrt{D}$ as:
\begin{equation*}
  \sqrt{D} = \sqrt{i^2 |D|} = i \sqrt{|D|}.
\end{equation*}
\end{block}



# The complex exponential function

## The complex exponential

Once we have obtained our two complex roots $r_1$ and $r_2$, we need to interpret the corresponding exponential solutions. 
\pause
\begin{block}{WTF?}
What's $e^{rt}$ when $r$ is complex?
\end{block}

The answer is found in what is called Euler's formula.


## Euler's formula
  
A historical quotation on Euler's formula:

\begin{block}{Benjamin Peirce (1809--1880)}
"Gentlemen, that is surely true,
it is absolutely paradoxical;
we cannot understand it,
and we don't know what it means.
But we have proved it,
and therefore we know it must be the truth."
\end{block}



## Euler's formula
  
Since $r$ is complex, it is a symbol of the form $x + iy$. Therefore, since $t$ is real, we get

\begin{equation*}
e^{rt} = e^{(x+iy)t} = e^{xt} e^{iyt}.
\end{equation*}

This is assuming the addition law for a function we haven't really defined, but if it didn't obey the addition law, we couldn't bear to call it the exponential function.


## Euler's formula
  
This famous and celebrated equation tells us how to interpret the $e^{iyt}$ portion of our exponential expression.

\begin{block}{Euler's formula}
\begin{equation*}e^{i \theta} = \cos{\theta} + i \sin{\theta}\end{equation*}
\end{block} 

Thus $\exp(rt) = \exp(xt + iyt) = e^{xt}(\cos{(yt)} + i \sin{(yt)})$.



## Euler's formula

Putting $\theta = \pi$, we obtain a special case, often referred to as Euler's formula.

\begin{block}{Also Euler's formula}
\begin{equation*} e^{\pi i} = -1. \end{equation*}
\end{block}

Respect. Happy Pi Day!




