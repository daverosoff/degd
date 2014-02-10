Encoding:           UTF-8  
LaTeX Input:        mmd-beamer-header-rosoff  
Title:              Systems of equations
Affiliation:        The College of Idaho  
Author:             Math 352 Differential Equations  
Date:               6 May 2013  
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

# Converting an \\( n \\)th order equation

## Converting to a system

We can convert the second-order homogeneous linear equation
\\[
    mu'' + \gamma u' + ku = 0
\\]
into a \\( 2 \times 2 \\) system by letting \\( x_1 = u \\), \\( x_2 = u' \\). The equation above then becomes
\\[
    mx'_2 + \gamma x_2 + kx_1 = 0,
\\]
so a \\( 2 \times 2\\) system whose solutions are the same as the second-order equations' solutions is
<!-- 
    \begin{align*}
        x'_1 &= x_2 \\
        x'_2 &= -\frac{k}{m} x_1 - \frac{\gamma}{m} x_2
    \end{align*}
-->

## Warm-up

Solve 1, 3, 5 from section 7.1. When you have a choice to make, always write the choice with *fewer primes*. When you are transforming an initial value problem, don't forget to transform the initial conditions!

# Procedure: \\( 2 \times 2 \\) homogeneous

## Algorithm for solving \\( 2 \times 2\\) homogeneous

- Obtain coefficient matrix \\( A \\)
- Find eigenvalues: the roots of \\( \det(A - \lambda I) \\)
- Solve for the coefficient vectors: the eigenvectors of \\( A \\)
- Write down the solution functions.

## Example

Consider the system of differential equations
<!-- 
\begin{align*}
    x'_1 &= x_1 + x_2 \\
    x'_2 &= 4x_1 + x_2
\end{align*}
-->
In matrix form, this becomes
\\[
    \vec{x}' = \begin{pmatrix}
        1 & 1 \\
        4 & 1
    \end{pmatrix} \vec{x}.
\\]
Write \\( A \\) for the coefficient matrix.

- Check that \\( \det{A - \lambda I} = \lambda^2 - 2 \lambda -3 \\), so that the eigenvalues of \\( A \\) are \\( \lambda_1 = 3 \\), \\( \lambda_2 = -1 \\).


## Getting the eigenvectors

- Solve the modified system for each eigenvalue to obtain eigenvectors \\( \vec{\xi}^{(1)} \\) and \\( \vec{\xi}^{(2)} \\).

The modified system is 
\\[
    \begin{pmatrix}
        1 - \lambda & 1 \\
        4 & 1 - \lambda
    \end{pmatrix} \begin{pmatrix} \xi_1 \\ \xi_2 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \end{pmatrix}.
\\]

- When \\( \lambda = 3 \\), we see that the system reduces to the equation \\( -2 \xi_1 + \xi_2 = 0 \\), so an eigenvector for \\( \lambda = 3 \\) is 
\\[
    \vec{\xi}^{(1)} = \begin{pmatrix} 1 \\ 2 \end{pmatrix}.
\\]

## The other eigenvector

When \\( \lambda = -1 \\), we see that the system becomes
\\[
    \begin{pmatrix}
        2 & 1 \\
        4 & 2
    \end{pmatrix} \begin{pmatrix} \xi_1 \\ \xi_2 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \end{pmatrix}.
\\]

- Therefore an eigenvector for \\( \lambda = -1 \\) is \\( \vec{\xi}^{(2)} = (1, -2)\\).

## Putting it all together

- The general solution to the system is, in the "nice" case, the general linear combination of the eigenvectors multiplied by the exponentials with growth constants given by their eigenvalues:

\\[
    \vec{x} = c_1 \vec{x}^{(1)} + c_2 \vec{x}^{(2)} = c_1 \begin{pmatrix} 1 \\ 2 \end{pmatrix} e^{3t} + c_2 \begin{pmatrix} 1 \\ -2 \end{pmatrix} e^{-t}.
\\]

- Finally, we can write the solutions in scalar form. The functions \\( x_1  \\) and    \\( x_2 \\) are the entries of the vector \\( \vec{x} \\).

\\[
    x_1 = c_1 e^{3t} + c_2 e^{-t}, \quad x_2 = 2c_1 e^{3t} - 2c_2 e^{-t}.
\\]

## Nice matrices
What makes a matrix "nice" is too involved for us to describe completely. If the matrix has as many eigenvalues as it does columns, then it is automatically "nice".

- If \\( \det{A - \lambda I} \\) factors into *distinct* linear factors, then \\( A \\) is "nice".

- In more technical terms \\( A \\) is *diagonalizable* if and only if \\( A \\) is "nice".

## Algorithm, again

- Obtain coefficient matrix \\( A \\).
- Find eigenvalues: the roots of \\( \det(A - \lambda I) \\).
- Solve for the coefficient vectors: the eigenvectors of \\( A \\).
- Write down the solution functions \\( x_1 \\) and \\( x_2 \\).

\\[
    \begin{pmatrix} x_1 \\ x_2 \end{pmatrix} = c_1 \vec{\xi}^{(1)} e^{\lambda_1 t} + c_2 \vec{\xi}^{(2)} e^{\lambda_2 t}.
\\]

- Solve 1--7 odd, part (a) only, in section 7.5.