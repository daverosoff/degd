% Undetermined coefficients: degeneracy and products
% Math 352 Differential Equations
% March 31, 2014

# Recap

## The nondegenerate case

The \textsc{Method of Undetermined Coefficients}
finds a particular solution of the inhomogeneous equation
\begin{equation*}
    ay'' + by' + cy = g(t),
\end{equation*}
when $g(t)$ is a polynomial, an exponential function, or a linear combination of sines and cosines (with like frequencies).

Our findings are summarized in the next table, and should be memorized.

## The shape of $Y$ for simple $g$

|         $g(t)$       |                    $Y(t)$                 |
|:--------------------:|:-----------------------------------------:|
| $t^n$                | $A_n t^n + \cdots + A_0$                  |
| $\exp{(rt)} $        | $A \exp{(rt)}$                            |
| $a \cos{(\omega t)}$ | $A \cos{(\omega t)} + B \sin{(\omega t)}$ |
| $a \sin{(\omega t)}$ | $A \cos{(\omega t)} + B \sin{(\omega t)}$ |

- if $g(t)$ is a linear combination of the above forms, guess $Y$ to be a 
linear combination of the corresponding entries
- $g(t) = 3t^2 + \exp{(2t)} \implies Y(t) = At^2 + Bt + C + D \exp{(2t)}$.

# Adaptations, variants, and degeneracy

## Efficiency in choosing the form of $Y$

- Pay attention to what you're doing:
    - Suppose $g(t) = 3t^3 + t^4$. Two polynomials (?), so a 
    suitable choice for $Y(t)$ could be
\begin{equation*}
    Y(t) = \underbrace{At^3 + Bt^2 + Ct + D}_{\text{from $3t^3$}} + \underbrace{Et^4 + Ft^3 + Gt^2 + Ht + I}_{\text{from $t^4$}}.
\end{equation*}
- Problem: a large system of equations awaiting you, with many solutions (rather than just one). 

## How to be efficient

- Previous UC guess is a disguised version of
\begin{equation*}
    Y(t) = At^4 + Bt^3 + Ct^2 + Dt + E
\end{equation*}
- To get this, regard $g(t) = 3t^3 + t^4$ as a single polynomial (not a sum)
- Always think of $g(t)$ in the way that leads to the fewest terms in the linear combination.

## Products

- Similarly when inhomogeneous term is a product of atomic ones, e.g.
\begin{equation*}
    g(t) = \exp{(2t)} \sin{(t)}.
\end{equation*}
- Naïve guess: $Y = A \exp{(2t)} \sin{(t)}$, but...
- having been burned before, write down the product of *the corresponding 
table entries*,
\begin{equation*}
    Y(t) = (A \exp{(2t)}) (B \cos{(t)} + C \sin{(t)}).
\end{equation*}
This looks more promising, and an expansion gives 
\begin{equation*}
    Y(t) = AB \exp{(2t)} \cos{(t)} + AC \exp{(2t)} \sin{(t)}.
\end{equation*}

## Relabel or reorganize

- Only the *form* of $Y$ matters, not names of coefficients. 
- Thus $AB$ and $AC$ should just be relabeled. 
- OK to reuse the letters, so write
\begin{equation*}
    Y(t) = A \exp{(2t)} \sin{(t)} + B \exp{(2t)} \cos{(t)}.
\end{equation*}
This is more efficient because it is a *smaller* system with *fewer* 
solutions.

- Another approach is to think about exponential factors separately.
    - Observe that $Y$ is the *original*
    exponential from $g$ times the *guess* for the trignonometric
    factor. 
    - This "works" with polynomials also.

## Try these out

Write down the most efficient form for $Y$ that you can, for each of these instances of $g(t)$.

\begin{equation*}
    e^{7t} (2 \cos{(2t)} - 8 \sin{(2t)}) \only<2>{ \implies A e^{7t} \cos{(2t)} + B e^{7t} \sin{(2t)} }
\end{equation*} \begin{equation*}
    t^2 e^{2t} \only<2>{ \implies A t^2 e^{2t} + B t e^{2t} + C e^{2t}} 
\end{equation*} \begin{equation*}
    3t^3 \sin{5t} \only<2>{\quad \text{...shown on the next slide.}}
\end{equation*}

## Not too cool

\begin{align*}
At^3 \cos{(5t)} &+ Bt^3 \sin{(5t)} + Ct^2 \cos{(5t)} + Dt^2 \sin{(5t)} \\ 
&+ Et \cos{(5t)} + Ft \sin{(5t)} + G \cos{(5t)} + H \sin{(5t)}
\end{align*}

This results in an $8 \times 8 $ system of equations, which I wouldn't
ask you to solve by hand. We'll see how to solve them using Sage in a couple
of weeks.

## Degeneracy

- What to do when the complementary solution $c_1 y_1 + c_2 y_2$ appears in 
$g(t)$?
\begin{equation} 
    y'' + 5y' + 6y = 6e^{-2t}
\end{equation}
- No choice of $A$ makes $Y = A \exp{(-2t)}$ a solution to the
above inhomogeneous equation, because such a function is a solution to the
*associated homogeneous equation*. 

In other words, $Y'' + 5Y' + 6Y = 0$, so there's no way we're getting
any exponentials on the right-hand side.

## What to do???

In such cases, guided either by past
experience or divine inspiration, one uses a higher-degree polynomial. Let the
coefficient be $At$ rather than $A$.

## A degenerate solution

> - Here, you can check that $6t \exp{(-2t)} $ is a solution. It is 
found by the same method as usual. But wait, you say!
> - What if we consider the equation $y'' + 4y' + 4y = 6 \exp{(-2t)} $?
> - If a little medicine is good, then a lot of medicine must be even better. 
So use a second-degree polynomial, and try to find $Y$ of the form
\begin{equation*}
    Y(t) = At^2 e^{-2t}.    
\end{equation*}

## Coming attractions

Undetermined coefficients doesn't work as nicely if the inhomogeneous term 
$g(t)$ isn't a linear combination of products of polynomials, trig
functions, and exponentials. For that reason, we must investigate a second
method: \textsc{variation of parameters.}
