Encoding:           UTF-8  
LaTeX Input:        mmd-beamer-header-rosoff  
Title:              Variation of parameters  
Affiliation:        The College of Idaho  
Author:             Math 352 Differential Equations  
Date:               8 April 2013  
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

# Introduction

## Introduction: This one goes out to all the \\( g \\)s

The method of undetermined coefficients is very useful when the derivatives of the terms appearing in \\( g(t) \\) have a regular, predictable shape and are themselves the derivatives of similar functions. But it's not too hard to find functions \\( g(t) \\) that would demand excessive ingenuity of us when guessing the form of \\( Y \\).

## Introduction: Too many functions!
Consider \\( y'' + y' + y = 3 \csc{(t)} \\). You can check that a particular solution \\( Y \\) is given by the formula 
<!-- \pause -->
\\[
    -3 \sin{(t)} \cos{(2t)} + \frac{3}{2} \ln |\csc{(t)} - \cot{(t)}| \sin{(2t)} + 3 \cos{(t)} \sin{(2t)}.
\\]
<!-- \pause -->
It's hard to imagine rules for undetermined coefficients that are both

- comprehensive enough to include a function like this and
- possible to commit to memory.

# Variation of parameters

## Variation of parameters: not a new thought
Recall how we discovered the second fundamental solution \\( t e^{rt} \\) in the case of a repeated root \\( r \\) of the characteristic equation. We promoted a constant to a functional coefficient and looked for a solution of the form \\( v(t) \exp{(rt)} \\).

- In other words, we allowed a parameter to vary.

We can try a similar idea when tackling the inhomogeneous equation \\( y'' + q(t)y' + r(t)y = g(t) \\), provided we have already solved the associated homogeneous equation \\( y'' + q(t)y' + r(t)y = 0 \\). Let us write \\( y_1 \\) and \\( y_2 \\) for a fundamental set of solutions as usual.

## Variation of parameters: execution
We shall search for a particular solution \\( Y \\) of our inhomogeneous equation of the form \\( Y = u_1 y_1 + u_2 y_2 \\): that is to say,
\\[
    Y(t) = u_1(t) y_1(t) + u_2(t) y_2(t),
\\]
where \\( u_1 \\) and \\( u_2 \\) are unknown coefficient functions we will have to find. We'll be plugging this expression for \\( Y \\) along with its derivatives back into the inhomogeneous equation, so let's compute the derivatives now.

## An unjustified assumption
For no very good reason, let's assume that the fundamental solutions \\( y_1 \\) and \\( y_2 \\) and the derivatives \\( u'_1 \\) and \\( u'_2 \\) satisfy the following equation:
\\[
    u'_1 y_1 + u'_2 y_2  = 0.
\\]

- This is the worst rabbit-out-of-the-hat of the term. 
- Sorry. 
- The idea is evidently due to Lagrange[^lag], and it greatly simplifies the computation to come. 
- At no point does it cause problems of any kind.

## The derivatives of \\( Y \\)
Since
\\[
    Y(t) = u_1(t) y_1(t) + u_2(t) y_2(t),
\\]
we also have
<!--
\begin{align*}
    Y'  &= u'_1 y_1 + u_1 y'_1 + u'_2 y_2 + u_2 y'_2, \\
        &= u_1 y'_1 + u_2 y'_2, \quad \text{and so} \\
    Y'' &= u_1 y''_1 + u'_1 y'_1 + u'_2 y'_2 + u_2 y''_2.
\end{align*}
-->

## Substitute back in
Now we find that \\( Y''(t) + q(t)Y'(t) + r(t)Y(t) \\) reduces to
\\[
    (u_1 y''_1 + u'_1 y'_1 + u'_2 y'_2 + u_2 y''_2) + q(t)(u_1 y'_1 + u_2 y'_2) + r(t)(u_1 y_1 + u_2 y_2).
\\]
Collecting terms along \\( u_1 \\), \\( u_2 \\), and their derivatives, we get
<!-- 
\begin{align*}
    (y''_1  & + qy'_1 + ry_1)u_1 + (y''_2 + qy'_2 + ry_2)u_2 + y'_1 u'_1 + y'_2 u'_2 \\
    &= y'_1 u'_1 + y'_2 u'_2,
\end{align*}
 -->
because of the assumption \\( u'_1 y_1 + u'_2 y_2  = 0 \\).

## Putting it all together
We have shown that if \\( u_1 \\) and \\( u_2 \\) have the desired properties, then they satisfy
<!-- \begin{align*}
    u'_1 y'_1 + u'_2 y'_2 &= g(t) \\
    u'_1 y_1 + u'_2 y_2  &= 0.
\end{align*}
 -->
Solving this system of equations for \\( u_1 \\) and \\( u_2 \\) (in the usual algebraic way, by either substitution or addition of equations)
gives
\\[
    u'_1 = -\frac{y_2 g}{W(y_1, y_2)}, u'_2 = \frac{y_1 g}{W(y_1, y_2)}.
\\]
Integrating each of these yields the desired functions \\( u_1 \\) and \\( u_2 \\).

# Conclusion

## The particular solution
That is, a particular solution \\( Y \\) results from any choice of antiderivatives \\( u_1 \\), \\( u_2 \\). We have
\\[
    Y = -y_1 \int \frac{y_2 g}{W(y_1, y_2)} \; dt + y_2 \int \frac{y_1 g}{W(y_1, y_2)} \; dt.
\\]
Like undetermined coefficients, this method has its own characteristics.

- It is reassuringly mechanistic. \\( Y \\) is given by a formula.
- It is also very general, since there are no conditions on \\( g \\).
- On the other hand, the integrals that arise may be intractable.

## Generalizations
For us, the coefficient functions \\( q(t) \\) and \\( r(t) \\) are constant. What happens when they are not?

- The methods of Chapter 5 are required to solve the general second-order linear homogeneous equation. 
- If fundamental solutions are known, VP works just the same to determine a particular solution. 
- It is only the characteristic equation and the exponential trick that fail in this case.

[^lag]: Joseph-Louis Lagrange (25 January 1736--10 April 1813) is most remembered for contributions analysis, number theory, and classical and celestial mechanics. His *M&eacute;<!--\'e-->canique Analytique* was fundamental for the physicists of the 19th century.