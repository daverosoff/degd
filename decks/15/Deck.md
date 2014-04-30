% Complex eigenvalues and bifurcations
% Math 352 Differential Equations
% April 30, 2014

# Recap

## The characteristic polynomial

- Matrix-vector differential equations $\vec{x}' = A\vec{x}$
have solutions of exponential type: $\vec{x} = \xi e^{rt}$.
- Here $r$ is an eigenvalue of the coefficient matrix $A$.
- And $\xi$ is a corresponding eigenvector.

- The eigenvalues are the roots of the characteristic
polynomial $\det{(A - tI)}$, which (for us) is a real
polynomial and has degree equal to the size of $A$.

## All about making that FTA

- The characteristic polynomial has $n$ complex roots, counting
multiplicities. 

- Thus there will be $n$ complex eigenvalues of the matrix
if we count them with repeats.

## Digression: repeated eigenvalues 

- When eigenvalues are repeated, there is a possibility
for the matrix to be \emph{deficient}. 
- This means there are
no corresponding eigenvectors for some occurrences of a 
repeated eigenvalue.
- This case is complicated, and we don't really have time
to discuss it. Some details (though not all) are in Section 7.8.

## Our restriction

- For us, eigenvalues will be distinct from now on: this means
there really are $n$ of them.
- Complex eigenvalues will only occur in conjugate pairs
because the entries of $A$ are real.

## Complex eigenvalues

- Combine complex solutions using Euler's formula to obtain
real-valued ones.
    - This will work because the eigenvalues occur in
    conjugate pairs.

- If $r = \lambda + i \mu$ and $\vec{\xi} = \vec{a} + i\vec{b}$,
then what is $\vec{\xi} e^{rt}$?

- It is not a surprise to see exponential-trigonometric products
as we did previously.

# Classification of singularities and bifurcation theory

## Types of eigenvalues

Mostly, the eigenvalues of a
$2 \times 2$ real matrix follow one of 3 paradigms:

1. Eigenvalues are real, of opposite sign: $\vec{x} = 0$ is a 
\emph{saddle point}.
2. Eigenvalues are real, of same sign: $\vec{x} = 0$ is a \emph{node}.
3. Eigenvalues are complex, with nonzero real part: 
$\vec{x} = 0$ is a \emph{spiral point}.

- Other cases (e.g., a zero eigenvalue, purely imaginary eigenvalues)
occur as transition points between these cases. 
- Such transitions are of great importance in \emph{bifurcation theory}.

## Applications of bifurcation theory

- Biology
    - interactions among a large variety of proteins
    - population ecology
- Physics
    - catastrophe theory
    - tunneling diodes
    - chaos theory





