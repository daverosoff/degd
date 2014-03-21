% Undetermined coefficients: nondegenerate
% Math 352 Differential Equations
% March 21, 2014

# Example 1

## The translation principle

Last time:

- If $Y$ is a \emph{particular solution} of the equation
$ay'' + by' + cy = g(t)$
- and $c_1 y_1 + c_2 y_2$ is the general solution of the associated
homogeneous equation 
    - $ay'' + by' + cy = 0$
- then $c_1 y_1 + c_2 y_2 + Y$ is the general solution of 
$ay'' + by' + cy = g(t)$.

We apply the method to an example.

## An exponential example

\begin{equation*}
    y'' - 2y' - 3y = 3e^{2t}
\end{equation*}

> - Step 1: Find the complementary solution, that is,
the general solution of the associated homogeneous
equation.
> - The characteristic polynomial is $r^2 - 2r - 3 =
(r-3)(r+1)$.
> - Therefore, the CS is $y_c = c_1 e^{3t} + c_2 e^{-t}$.
> - Get in the habit of doing this step first. Trust me.

## Apply undetermined coefficients

- Step 2: Look for a solution of the form $Y = Ae^{2t}$. 
- Then $Y' = 2Ae^{2t}$ and $Y'' = 4Ae^{2t}$.
- Substitute:

\begin{align*}
    3e^{2t} &= Y'' - 2Y' - 3Y \\
            &= 4Ae^{2t} - 4Ae^{2t} - 3Ae^{2t} \\
            &= 3Ae^{2t}.
\end{align*}

Evidently we obtain $A = 1$, so $Y = e^{2t}$ is a particular solution.

## Write down the general solution

- Step 3: By the discussion surrounding the translation principle, 
it follows that

\begin{equation*}
    c_1 e^{3t} + c_2 e^{-t} + e^{2t}
\end{equation*}

is the general solution of the inhomogeneous differential equation
$y'' - 2y' - 3y = 3e^{2t}$.

# Example 2

## A trigonometric example

\begin{equation*}
    y'' - 2y' - 3y = 2 \sin{2t}.
\end{equation*}

> - Step 1: the complementary solution is $c_1 e^{3t} + c_2 e^{-t}$
as before.
> - Step 2: try $Y = A \sin{2t}$.
> - Then $Y' = 2A \cos{2t}$ and $Y'' = -4A \sin{2t}$.

## Solve for the undetermined coefficient

- We found $Y' = 2A \cos{2t}$ and $Y'' = -4A \sin{2t}$.
- Substitution gives 
\begin{align*}
    Y'' - 2Y' - 3Y &= -4A \sin{2t} - 2(2A \cos{2t}) - 3(A \sin{2t}) \\
                    &= -7A \sin{2t} - 4A \cos{2t}.
\end{align*}
Here, something is wrong: there is no choice of $A$ that makes 
the RHS equal to $2 \sin {2t}$, since $0 \ne 2/7$.

## A better guess

The correct guess is $Y = A \cos{2t} + B \sin{2t}$.

> - Work together to determine $A$ and $B$.
> - You should find $A = 8/65$, $B = -14/65$.

## Step 3

- The general solution is:
\begin{equation*}
    c_1 e^{3t} + c_2 e^{-t} + \frac{8}{65} \cos{2t} - 
    \frac{14}{65} \sin{2t}  
\end{equation*}

## Degeneracy

- These examples are \emph{nondegenerate}. 
- This means the inhomogeneous term $g(t)$ doesn't
appear in the complementary solution. 
- Read section 3.5 to see how to handle degeneracies.

## Table of guesses (nondegenerate only!)

\begin{table}[h!t]
    \caption{Guess-o-chart}
    \centering
    \begin{tabular}{cc}
        \toprule
        $ g(t) $&$ Y(t) $\\
        \midrule
        $ t^n $&$ A_n t^n + \cdots + A_ 0 $\\
        $ \exp{(at)} $&$ A \exp{(at)} $\\
        $ a \cos{(\omega t)} $&$ A \cos{(\omega t)} + B \sin{(\omega t)} $\\
        $ a \sin{(\omega t)} $&$ A \cos{(\omega t)} + B \sin{(\omega t)} $\\
    \bottomrule
\end{tabular}
\end{table}

- If $g(t)$ is a linear combination of entries from the table,
let $Y$ be the corresponding linear combination.

## SPRIIIING BREAAAK

- After the break:
    - we will discuss the degenerate cases
    - and the case where $g(t)$ is a product of table entries.
