Encoding:           UTF-8  
LaTeX Input:        mmd-beamer-header-rosoff  
Title:              Undetermined Coefficients,I  
Subtitle:           Guess-and-check: expert level  
Affiliation:        The College of Idaho  
Author:             Math 352 Differential Equations
Date:               1 April 2013  
base header level:  2  
LaTeX Mode:         beamer  
Font theme:         structurebold  
Color theme:        crane  
Theme:              Szeged  
LaTeX Input:        mmd-beamer-begin-doc-rosoff  
LaTeX Footer:       mmd-beamer-footer 
CSS:                https://docralphv.collegeofidaho.edu/~drosoff/mystyle.css
HTML Header:        <script type="text/javascript" src="https://docralphv.collegeofidaho.edu/mathjax/MathJax.js?config=TeX-AMS-MML_HTMLorMML"></script>
<style>p {text-align:justify;font-size:110%;}
li {text-align:justify;font-size:110%;}
</style>
<base href = "https://zeus.collegeofidaho.edu/academics/MathPhysics/courses/MAT-352/">
HTML header level:  2   

# Recap

## The homogeneous case

In the last couple weeks, we saw how to use the exponential trick and some inspired guessing to get general solutions of the general second-order linear homogeneous equation with constant coefficients,
\\[ ay'' + by' + cy = 0. \\]

There were three distinct cases, corresponding to the three different possibilities \\( D = b^2 - 4ac > 0 \\), \\( D < 0 \\), and \\( D = 0 \\).

# Inhomogeneous equations

## Inhomogeneity

One of the key algebraic coincidences that allowed us to use the exponential trick was the *superposition principle*. This is the principle that if \\( y_1 \\) and \\( y_2 \\) are solutions, then all their linear combinations are too. It fails spectacularly if we try it on an inhomogeneous equation, as illustrated in several weekly homework problems.

## Inhomogeneity: the translation principle

But this doesn't mean that our work on the homogeneous equation won't help us solve equations of the form
<!--
\begin{equation} \label{eq:inhom}
ay'' + by' + cy = g(t).
\end{equation}
-->
This is because any two solutions of such an equation differ by a solution of the *associated homogeneous equation* \\( ay'' + by' + cy = 0 \\). That is to say, if \\( Y_1 \\) and  \\( Y_2 \\) are both solutions of Equation<!--~\ref{eq:inhom}-->, then \\( Y_1 - Y_2 \\) is a solution of the associated homogeneous equation.

## The geometry of linear differential operators: homogeneous equations

It is best to think of the whole collection of solutions of the associated homogeneous equation as a set[^set] \\( S \\). A pair of fundamental solutions \\( y_1 \\), \\( y_2 \\) matches \\( S \\) with the Euclidean plane; namely, the point \\( (c_1, c_2) \\) corresponds to the solution \\( c_1 y_1 + c_2 y_2 \\). Practice visualizing the plane as embedded in a bigger-dimensional space (the space of all differentiable functions, maybe).

Observe that the point \\( (0,0) \\) is an element of our plane \\( S \\), because the zero function is a solution of every homogeneous differential equation. Thus the plane you are imagining passes through the origin of whatever space it lives in.

## The geometry of linear differential operators: inhomogeneous equations

Since the inhomogeneous equation \\( ay'' + by' + cy = g(t) \\) is a second-order equation, intuition and the theory of Wronskians tell us that there should be a pair of fundamental solutions. This sort of happens, but the details are a little different.
<!--
\begin{block}{The solutions are still a plane}
Solutions of the inhomogeneous equation correspond to points in a plane just like the solutions of the homogeneous equation do. The difference is, it's not the same plane.
\end{block}
-->
The plane for inhomogeneous equations doesn't pass through the origin, because the zero function isn't a solution of any inhomogeneous equation.

## The geometry of linear differential operators: particular solutions

Recall the translation principle for the inhomogeneous equation:
<!--
\begin{block}{Translation principle}
If $Y_1$ and $Y_2$ are solutions of the inhomogeneous equation, then their difference $Y_1 - Y_2$ is a solution of the associated homogeneous equation.
\end{block}
-->
Inverted, it tells us how to construct new solutions of the inhomogeneous equation from a previously known one: add solutions of the associated homogeneous equation.

## The general solution of the inhomogeneous equation

Let us suppose that by some devious method we have constructed a single solution of the inhomogeneous equation, say \\( Y \\), so that \\( aY'' + bY' + cY = g(t) \\). Let also \\( y_1 \\) and \\( y_2 \\) be a fundamental set of solutions of the associated homogeneous equation. 
<!--
\begin{block}{General solution of the inhomogeneous equation}
Every function satisfying $ay'' + by' + cy = g(t)$ is of the form
\[ Y + c_1y_1 + c_2 y_2 \]
for some numbers $c_1$ and $c_2$.
\end{block}
-->
Thus these solutions also form a plane: a plane passing through the nonzero point \\( Y \\).

## Construction of particular solutions

As usual, this existence theorem doesn't tell us anything about how to construct \\( Y \\), called a *particular solution* of the equation. We know from the general existence theorem for second-order initial value problems that each has a solution. Methods for finding \\( Y \\) vary and depend very much on the form of the inhomogeneous term \\( g(t) \\). We will investigate two such methods: the first of these is *undetermined coefficients*.

# Conclusion

## Conclusion: examples good, table bad

By clever guessing with sufficient algebraic stamina, it's possible to build \\( Y \\) in a reasonably systematic and efficient way when \\( g(t) \\) is, roughly speaking, built from polynomials, exponential functions, and sine and cosine. But I have one warning to give you.<!--
\pause
-->
It is, very probably, a big mistake to try to memorize the table given in the text. I've watched people try and fail for years. It is a much better idea to learn the mental yoga of how the method works, by working through and thinking about lots of examples.

[^set]: Many students have learned to find the word "set" unnerving, but it only serves to bind related objects into a conceptual whole. It is a "one" that embodies or instantiates a "many".