Encoding:           UTF-8  
LaTeX Input:        mmd-beamer-header-rosoff  
Title:              Matrix-vector equations
Affiliation:        The College of Idaho  
Author:             Math 352 Differential Equations  
Date:               3 May 2013  
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

<!-- \renewcommand{\vec}[1]{\mathbf{#1}} -->
# Matrix-vector equations

## Recap

Recall that the equation \\( y' = ay \\) has general solution of exponential type:
\\[
    y = ce^{at}.
\\]

A system of such equations also has a general solution of exponential type, as we shall see.

## Matrices and vectors

We've seen how the \\( m \times n \\) system of equations 
<!-- 
    \begin{align*}
    x_1 + 4x_2 + 6x_3 &= -3\\
    2x_1 - 2x_2 \phantom{+ 0x_3} &= 7 
    \end{align*}
-->
corresponds to the augmented matrix
<!--
\[
    A = \begin{pmatrix}
        1 & 4 & 6 & -3 \\
        2 & -2 & 0 & 7
    \end{pmatrix}.
\]
-->
This is very convenient if we want to solve for the \\( x_j \\), but there is another formulation we must also understand.

## Matrix-vector form

- Instead of leaving the \\( x_j \\) out entirely, the *matrix-vector form* of the system compresses them into a vector \\( \vec{x} = (x_1, \ldots, x_n) \\). Similarly, we view the constants \\( b_i \\) on the right-hand side as a vector \\( \vec{b} = (b_1, \ldots, b_m) \\). 

- According to our convention that vectors are always *column matrices*, \\( \vec{x} \\) is \\( n \times 1 \\) while \\( \vec{b} \\) is \\( m \times 1 \\).

- This means that, writing \\( A \\) for the \\( m \times n \\) matrix of coefficients (*not* the same as the augmented matrix we used previously) the product \\( Ax \\) is defined, and has the same shape as the constant vector \\( \vec{b} \\).

## Matrix-vector form: reloaded

You can check, using the definition of matrix multiplication, that a list of solutions \\( x_1, \ldots, x_n \\) to the \\( m \times n \\) system of equations
<!--
    \[
    \begin{pmatrix}
        a_{11} & a_{12} & \cdots & a_{1n} & b_1 \\
        a_{21} & a_{22} & \cdots & a_{2n} & b_2 \\
        \vdots & \vdots & \ddots & \vdots & \vdots \\
        a_{m1} & a_{m2} & \cdots & a_{mn} & b_m 
    \end{pmatrix}
    \]
-->
is the same thing as a solution to the matrix-vector equation
<!--
    \[
    \begin{pmatrix}
        a_{11} & a_{12} & \cdots & a_{1n} \\
        a_{21} & a_{22} & \cdots & a_{2n} \\
        \vdots & \vdots & \ddots & \vdots \\
        a_{m1} & a_{m2} & \cdots & a_{mn} 
    \end{pmatrix}
    \begin{pmatrix}
        x_1 \\ x_2 \\ \vdots \\ x_n
    \end{pmatrix} = \begin{pmatrix}
        b_1 \\ b_2 \\ \vdots \\ b_m
    \end{pmatrix}.
    \]
-->

## Matrix-vector form: unlocked

Typically, we would suppress the coefficients and just write the last huge mess as \\( A\vec{x} = \vec{b} \\) where \\( A \\), \\( x \\), and \\( b \\) are as above. Remember: *solution* means what it always has (at least since week 4): something that, when you plug it in to the equation, makes it true.

- From the matrix-vector point of view, we aren't plugging in a whole list of \\( x_j \\), but a single vector \\( \vec{x} \\).

- General theory of matrix algebra (which we haven't time to develop) tells us that for a fixed \\( A \\) and \\( \vec{b} \\), there are three possibilities: no solution, one solution, or infinitely many solutions.

## Other questions about matrix-vector equations

Instead of thinking of \\( A \\) and \\( \vec{b} \\) as fixed and asking about the set of solution vectors \\( \vec{x} \\), we might ask

- For a fixed \\( A \\), which \\( m \times 1 \\) vectors \\( \vec{b} \\) occur as values of \\( Ax \\)?

This is another question we could answer by row-reduction techniques. But that is beyond the scope of this course.

## Unpacking the matrix-vector form

Let's write \\( A_j \\) for the \\( j \\)th column of \\( A \\) regarded as a vector, so that
\\[
    A_j = \begin{pmatrix} a_{1j} \\ a_{2j} \\ \vdots \\ a_{mj} \end{pmatrix}.
\\]
Thus \\( A_j \\) is a \\( m \times 1 \\) matrix, just like the right-hand side \\( \vec{b} \\) in the equation \\( A \vec{x} = \vec{b} \\).

- You can check, using the definition of matrix multiplication, that
\\( A \vec{x} = x_1 A_1 + x_2 A_2 + \cdots + x_n A_n\\).

- This representation is key in what follows.

# Eigenvalues and systems of linear differential equations

## Application to ODEs

Let's pass to the application of matrix theory we are interested in: systems of first-order linear ODEs. The algebra is similar to what we have done so far, but the \\( x_j \\) now must be regarded as differentiable *functions* of some usually unwritten variable \\( t \\). The right-hand side \\( \vec{b} \\) is replaced by the vector of derivatives of the \\( x_j \\).

\\[
    \begin{pmatrix}
        x'_1 \\ x'_2 \\ \vdots \\ x'_n
    \end{pmatrix} = \begin{pmatrix}
        a_{11} & a_{12} & \cdots & a_{1n} \\
        a_{21} & a_{22} & \cdots & a_{2n} \\
        \vdots & \vdots & \ddots & \vdots \\
        a_{m1} & a_{m2} & \cdots & a_{mn} 
    \end{pmatrix}
    \begin{pmatrix}
        x_1 \\ x_2 \\ \vdots \\ x_n
    \end{pmatrix}
\\]

- We usually write this as \\( \vec{x'} = A \vec{x} \\). Observe that \\( \vec{x} \\) is now a variable vector and \\( \vec{x'} \\) stands for the vector of the derivatives.

## Assumptions, I

- Like before, the coefficients must be constant for our methods to work. Assume that \\( A \\) has constant entries (they are not functions of \\( t \\)).
- We also assume that \\( A \\) is square, that is, that \\( m = n \\). According to universal mathematical custom we write \\( n \\) for this common value.

## Assumptions, II

- Just like we guessed that solutions of the original linear first-order differential equation \\( y' = ay \\) would be of exponential type, we are going to guess the form of the entries of \\( \vec{x} \\).
- In fact, just like we assumed the solutions of \\( y' = ay \\) would be multiples of the exponential \\( e^{at} \\), we'll assume the solutions of \\( x' = Ax \\) are *vector* multiples of the exponential \\( e^{\lambda t} \\) for suitable \\( \lambda \\).
- The \\( \lambda \\) that "work" are called the *eigenvalues* of the matrix \\( A \\).

## Eigenvalues

- To find the eigenvalues of \\( A \\), we solve the linear system of ordinary algebraic equations
\\[
    \begin{pmatrix}
        a_{11} - \lambda & a_{12} & \cdots & a_{1n} \\
        a_{21} & a_{22} - \lambda & \cdots & a_{2n} \\
        \vdots & \vdots & \ddots & \vdots \\
        a_{n1} & a_{n2} & \cdots & a_{nn} - \lambda
    \end{pmatrix} \begin{pmatrix}
        \xi_1 \\ \xi_2 \\ \vdots \\ \xi_n
    \end{pmatrix} = \begin{pmatrix}
        0 \\ 0 \\ \vdots \\ 0
    \end{pmatrix}.
\\]