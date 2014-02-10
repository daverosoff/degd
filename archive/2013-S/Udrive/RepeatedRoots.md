Encoding:           UTF-8  
LaTeX Input:        mmd-beamer-header  
Title:              Repeated Roots  
Subtitle:           Second-order Linear Homogeneous Equations  
Author:             D. Rosoff  
Affiliation:        The College of Idaho  
Date:               20 March 2013  
base header level:  2  
LaTeX Mode:         beamer  
Font theme:         structurebold  
Color theme:        crane  
Theme:              Szeged  
LaTeX Input:        mmd-beamer-begin-doc-rosoff  
LaTeX Footer:       mmd-beamer-footer  

# Recap

## The characteristic polynomial
The second-order linear homogeneous equation with constant coefficients is
\\( ay'' + by' + cy = 0 \\). We used a very sophisticated trick to discover solutions of exponential form: \\( y = e^{rt} \\).

<!-- \pause -->

<!--
\begin{block}{Sophisticated Trick}
    Guess and check.
\end{block}
-->

<!--
\pause
-->

If such a \\( y \\) satisfies the differential equation, then \\( r \\) is a zero of the *characteristic polynomial* \\( ar^2 + br + c \\).

## Positive discriminant
When \\( D = b^2 - 4ac > 0 \\), there are two distinct real roots \\( r_1 \\) and \\( r_2 \\). These correspond to exponential solutions \\( y_1 = e^{r_1 t} \\) and \\( y_2 = e^{r_2 t} \\).

You can check that the generic linear combination \\( c_1 y_1 + c_2 y_2 \\) is the only game in town by computing the Wronskian \\( W(y_1, y_2) \\).

## Negative discriminant
When \\( D = b^2 - 4ac < 0 \\), there are still two distinct roots, but they are complex. Because complex roots of real polynomials occur in *conjugate pairs*, those roots are of the form \\( \lambda + i \mu \\) where \\( \lambda \\) and \\( \mu \\) are real.

By Euler's formula, you found complex-valued solutions \\( y_1 \\) and \\( y_2 \\) just like in the case \\( D > 0 \\).
<!-- 
\begin{align*} 
    y_1 &= e^{\lambda t} (\cos{\mu t} + i \sin{\mu t}) \\
    y_2 &= e^{\lambda t} (\cos{\mu t} - i \sin{\mu t}). 
\end{align*}
-->

## Real solutions from complex ones
The solutions \\( y_1 \\) and \\( y_2 \\) are mathematically legit, but our primary interest is in getting real-valued ones. You observed that the linear combinations 
<!-- 
\begin{block}{The real solutions}
\begin{align*}
    u &= \frac{y_1 + y_2}{2}  = e^{\lambda t} \cos{\mu t} \\
    v &= \frac{y_1 - y_2}{2i} = e^{\lambda t} \sin{\mu t}
\end{align*}
\end{block}
-->
are indeed real-valued. Curious readers can check, using the Wronskian, that \\( c_1 u + c_2 v \\) is the general solution.

# The last case

## Repeated roots
But there is one more case to investigate: the case of a repeated root. This happens when \\( D = 0 \\), so that the characteristic equation \\( ar^2 + br + c = 0 \\) has a unique root \\( -b/2a \\). In this case our method doesn't produce two solutions, so we cannot claim to have the general solution.

<!-- 
\begin{block}{An exponential solution still exists}
    \( y = e^{(-b/2a)t} \) is a solution. But where are the rest?
\end{block}
 -->

## More guess-and-check

Since the characteristic equation isn't going to give us another root, we have to find it ourselves. One thing you might think of is that we have not just one solution, but a whole 1-dimensional family of them: \\( c e^{(-b/2a)t} \\), where \\( c \in \R \\) can be any real number. 

<!--
\begin{block}{Idea}
    Look for solutions of the form \( y = v(t) e^{(-b/2a)t} \).
\end{block}
-->

We carry this idea out just as we did when we developed the characteristic equation trick: plug the expression into the differential equation and see what has to happen.

# How to solve

## Reduction of order

We'll end up with some conditions on the functions \\( v(t) \\) that "work". Just like plugging \\( e^{rt} \\) into the differential equation led to the characteristic equation, we will get some equations involving the unknown coefficient function \\( v(t) \\) that will (we hope) lead to another type of solution---something "different" from \\( e^{(-b/2a)t} \\).

<!--
\pause
-->

Let \\( y = v e^{(-b/2a)t} = v y_1 \\) for short. Find \\( y' \\) and \\( y'' \\) and plug them back into the differential equation. When the dust settles, you'll have an equation you can solve for \\( v \\).
