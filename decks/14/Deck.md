% Introduction to equations with matrices
% Math 352 Differential Equations
% April 14, 2014


# Introduction

## The machinery of linear algebra

- Fundamental algebraic construction of linear algebra: *linear 
combinations*.
- *Vector spaces* are places where it makes sense to form linear combos.
- Coefficients can be real, complex, ...
- The objects being combined are often called vectors, even if they are not
vectors like $\langle 2, -3, 4, 12 \rangle$ or $2 \vec{i} - 6 \vec{j}$.

- Suppose that $y_1$, $y_2$, $y_3$, ... $y_n$ are differentiable and that
$a_1$, ... $a_n$ are real numbers (scalars).

- Then $a_1 y_1 + a_2 y_2 + \cdots + a_n y_n$ is also differentiable.

- So, the set of differentiable functions forms what is called a *real vector 
space*.

# Systems of equations

## Linear systems 

A system of linear (algebraic) equations is a system like this:
\begin{equation*}
    \begin{array}{ccccccccc}
        a_{11} x_{1} &+& a_{12} x_{2} &+& a_{13} x_{3} &+& a_{14} x_{4} &=& b_1 \\
        a_{21} x_{1} &+& a_{22} x_{2} &+& a_{23} x_{3} &+& a_{24} x_{4} &=& b_2 \\
        a_{31} x_{1} &+& a_{32} x_{2} &+& a_{33} x_{3} &+& a_{34} x_{4} &=& b_3 \\
    \end{array}
\end{equation*}

For example, initial value problems give rise to such systems, as did 
undetermined coefficients:

\begin{equation*}
    \begin{array}{ccccc}
        c_1   &+&  c_2 &=& 2 \\
        -4c_1 &+& 2c_2 &=& -10 \\
    \end{array}
\end{equation*}

## Matrix form of a system

\begin{equation*}
    \begin{pmatrix}
        a_{11} & a_{12} & a_{13} & a_{14} \\
        a_{21} & a_{22} & a_{23} & a_{24} \\
        a_{31} & a_{32} & a_{33} & a_{34} \\
    \end{pmatrix} \begin{pmatrix}
        x_1 \\ x_2 \\ x_3 \\ x_4
    \end{pmatrix} = \begin{pmatrix}
        b_1 \\ b_2 \\ b_3
    \end{pmatrix}
\end{equation*}
It's cleaner and allows us to focus on the arithmetic.
\begin{equation*}
    \begin{pmatrix}
        1 & 1 \\
        -4 & 2 \\ 
    \end{pmatrix} \begin{pmatrix}
        x_1 \\ x_2
    \end{pmatrix} = \begin{pmatrix}
        2 \\ -10
    \end{pmatrix}
\end{equation*}

## Solutions of matrix equations

- The vector of $x_i$ is the variable of the matrix equation.
- A *solution* of the matrix equation is a choice of $x_i$ that makes all
the individual linear equations true.

Two matrix equations are *equivalent* if they have exactly the same
set of solutions. 

- Matrices are solved by transforming them into equivalent equations whose
solutions are obvious.

## An obvious matrix

Lots of other matrix equations' solutions are obvious, but this is what
I really meant:

\begin{equation*}
    \begin{pmatrix}
        \textcolor{red}{1}  & 2 & \textcolor{blue}{0} & \textcolor{blue}{0} & 2/3  \\
        \textcolor{blue}{0} & 0 & \textcolor{red}{1}  & \textcolor{blue}{0} & -1  \\
        \textcolor{blue}{0} & 0 & \textcolor{blue}{0} & \textcolor{red}{1} & -10  \\
        \textcolor{blue}{0} & 0 & \textcolor{blue}{0} & \textcolor{blue}{0} &  0  \\
    \end{pmatrix} \begin{pmatrix}
        x_1 \\ x_2 \\ x_3 \\ x_4 \\ x_5 
    \end{pmatrix} = \begin{pmatrix}
        b_1 \\ b_2 \\ b_3 \\ b_4
    \end{pmatrix}
\end{equation*}

# Analysis of matrices

## Reduced echelon form

We say a matrix $A$ is in reduced echelon form if:

- the first nonzero entry of each row is a $1$
    - such an entry is called a ``pivot'' or ``leading $1$''
- each pivot is the only nonzero entry in its column
- each of the pivots after the first one appears to
    the right of the previous pivot
- each row without a pivot follows all rows with a pivot

Such a matrix certainly has an obvious solution set, and:

- Every matrix is equivalent to exactly one matrix in reduced echelon form. 

## How do we find a reduced echelon equivalent?

- The same way we solve the equations to which the matrix equation
corresponds: by adding and subtracting the rows from one another.

- We'll need to keep track of the RHS too, so add it as the last
column of the matrix. We'll manipulate this matrix:

\begin{equation*}
    \begin{pmatrix}
        a_{11} & a_{12} & \cdots & a_{1n} & b_1 \\
        a_{21} & a_{22} & \cdots & a_{2n} & b_2 \\
        \vdots & \vdots & \ddots & \vdots & \vdots \\
        a_{m1} & a_{m2} & \cdots & a_{mn} & b_m \\
    \end{pmatrix}
\end{equation*}

## Gaussian elimination

- There are three operations on matrices that preserve solution sets.
- If you do any of these operations to a matrix, you obtain an equivalent one.

- Swapping rows 
    - obviously, this won't affect the solutions: underlying set of 
    equations is the same
- Multiplying a row by a nonzero number
    - this changes the equations, but not the solution set
- Adding a nonzero multiple of a row to another row
    - also doesn't change the solution set.

There's a fairly transparent algorithm using these operations that
transforms each matrix into its unique reduced echelon equivalent.

## In practice: upper-triangular

If you are row-reducing a matrix by hand, reduced echelon form
is overkill a lot of the time.

- Reduce to an upper-triangular matrix
- All nonzero entries on or above the main diagonal
    - that is, the upper-left-to-lower-right diagonal
    - with slope $-1$

## Entering vectors in Sage

- Initialize a vector value with \texttt{vector()}
- \texttt{u = vector(QQ, [1, 3/2, -1])}
- Use \texttt{QQ} to display fractions instead of decimals
- \texttt{u}
    - \texttt{(1, -3/2, 1)}
- \texttt{v = vector(RR, [1, 3/2, -1])}; v
    - \texttt{(1.00000000000000, 1.50000000000000, -1.00000000000000)}

## Entering matrices

- Either enter a matrix as a vector of its rows
    - \texttt{A = matrix(QQ, [[1, 2], [3, 4], [5, 6]])}
- or as a list with specification of number of rows
    - \texttt{A = matrix(QQ, 2, [1,2,3,4,5,6])}
- Obtain reduced echelon form with \texttt{rref}:
    - \texttt{B = A.rref()}

## Row operations

- Want to use Sage to check your work in performing row
operations?
    - The matrix methods below may be useful. 
    - These methods are *destructive*: they change the entries of the
    matrix on which they're called.
- \texttt{A.rescale\_row(i,a)}
    - multiply row $i$ by $a$
- \texttt{A.add\_multiple\_of\_row(i,j,a)}
    - add $a$ times row $j$ to row $i$
- \texttt{A.swap\_rows(i,j)}
    - swap rows $i$ and $j$

## Sage lab assignment

Use Sage to solve the systems of linear equations.

\begin{equation*}
    \begin{array}{ccccccc}
        3x &+& 3y &+& 12z &=& 6 \\
        x  &+& y  &+& 4z  &=& 2 \\
        2x &+& 5y &+& 20z &=& 10 \\
        -x &+& 2y &+& 8z  &=& 4  
    \end{array} \quad \begin{array}{ccccccc}
        2x  &+& 10y &+& 2z &=& 6 \\
        x   &+& 5y  &+& 2z &=& 6 \\
        x   &+& 5y  &+& z  &=& 3 \\
        -3x &-& 15y &+& 3z &=& -9  
    \end{array}
\end{equation*}
\begin{equation*}
    \begin{array}{ccccccccc}
        2x &+& y &-& z &+& 2w &=& -6 \\
        3x &+& 4y & & &+& w &=& 1 \\
        x &+& 5y &+& 2z &+& 6w &=& -3 \\
        5x &+& 2y &-& z &-& w &=& 3
    \end{array}
\end{equation*}
