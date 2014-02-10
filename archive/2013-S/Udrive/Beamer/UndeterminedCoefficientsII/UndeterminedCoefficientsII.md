Encoding:           UTF-8  
LaTeX Input:        mmd-beamer-header-rosoff  
Title:              Undetermined Coefficients, II  
Subtitle:           Products and degeneracy  
Affiliation:        The College of Idaho  
Author:             Math 352 Differential Equations  
Date:               8 April 2013  
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

## The nondegenerate case

Last week, we saw how to use the <!--
\textsc{-->Method of Undetermined Coefficients<!--}
--> to find particular solutions of the inhomogeneous equation
\\[
    ay'' + by' + cy = g(t),
\\]
when \\( g(t) \\) is a polynomial, an exponential function, or a linear combination of sines and cosines (with like frequencies).

Our findings are summarized in the next table, and should be memorized.

## The shape of \\(Y\\) for simple \\( g \\)

|         \\( g(t) \\)       |                    \\( Y(t) \\)                 |
|:--------------------------:|:-----------------------------------------------:|
| \\( t^n \\)                | \\( A_n t^n + \cdots + A_ 0 \\)                 |
| \\( \exp{(at)} \\)         | \\( A \exp{(at)} \\)                            |
| \\( a \cos{(\omega t)} \\) | \\( A \cos{(\omega t)} + B \sin{(\omega t)} \\) |
| \\( a \sin{(\omega t)} \\) | \\( A \cos{(\omega t)} + B \sin{(\omega t)} \\) |

We saw too that if \\( g(t) \\) is a linear combination of the above forms, then an appropriate guess for \\( Y \\) is a linear combination (with suitably generalized coefficients) of the corresponding entries in the second column. For example, \\( g(t) = 3t^2 + \exp{(2t)} \\) would lead to the form 
\\[
    Y(t) = At^2 + Bt + C + D \exp{(2t)}.
\\]

# Adaptations, variants, and degeneracy

## Efficiency in choosing the form of \\( Y \\)

The table is given in (almost) the most abbreviated form. That means there is a lot of opportunity to waste time, if you are not paying attention to what you're doing. Suppose \\( g(t) = 3t^3 + t^4 \\). Each of these is a polynomial, so a suitable choice for \\( Y(t) \\) could be
\\[
    Y(t) = \underbrace{At^3 + Bt^2 + Ct + D}_{\text{from $3t^3$}} + \underbrace{Et^4 + Ft^3 + Gt^2 + Ht + I}_{\text{from $t^4$}}.
\\]
The problem here is that this is very inefficient. It is a large system of equations awaiting you, with many solutions (rather than just one). 

## How to be efficient

The reason is that this polynomial is a disguised version of
\\[
    Y(t) = At^4 + Bt^3 + Ct^2 + Dt + E
\\]
which is what you get if you regard \\( g(t) \\) as a single polynomial, rather than as a linear combination. Always think of \\( g(t) \\) in the way that leads to the fewest terms in the linear combination.

## Products

There are similar improvements to be made when confronted with an inhomogeneous term that is a product of the atomic ones, for example
\\[
    g(t) = \exp{(2t)} \sin{(t)}.
\\]
Now the na&iuml;<!--\"i-->ve guess is \\( Y = A \exp{(2t)} \sin{(t)} \\), but having been burned before we know better and write down the product of *the corresponding table entries*,
\\[
    Y(t) = (A \exp{(2t)}) (B \cos{(t)} + C \sin{(t)}).
\\]
This looks more promising, and an expansion gives 
\\[
    Y(t) = AB \exp{(2t)} \cos{(t)} + AC \exp{(2t)} \sin{(t)}.
\\]

## Relabel or reorganize

It is essential to remember that only the *form* of \\( Y \\) matters, not the names we give to its coefficients. Thus \\( AB \\) and \\( AC \\) should just be relabeled. It's OK to reuse the letters, so you could write
\\[
    Y(t) = A \exp{(2t)} \sin{(t)} + B \exp{(2t)} \cos{(t)}.
\\]
This is more efficient because it is a *smaller* system with *fewer* solutions.

Another conceptual approach is to think about exponential factors separately. Observe that \\( Y \\) in the previous display is the product of the *original* exponential from \\( g \\) with the *prescribed guess* for the trignonometric factor. This "works" with polynomials also. 

## Try these out

Write down the most efficient form for \\( Y \\) that you can, for each of these instances of \\( g(t) \\).

<!--
\[
    e^{7t} (2 \cos{(2t)} - 8 \sin{(2t)}) \only<2>{ \implies A e^{7t} \cos{(2t)} + B e^{7t} \sin{(2t)} }
\] \[
    t^2 e^{2t} \only<2>{ \implies A t^2 e^{2t} + B t e^{2t} + C e^{2t}} 
\] \[
    3t^3 \sin{5t} \only<2>{\quad \text{...shown on the next slide.}}
\]
-->

## Not too cool

<!--
\begin{align*}
At^3 \cos{(5t)} &+ Bt^3 \sin{(5t)} + Ct^2 \cos{(5t)} + Dt^2 \sin{(5t)} \\ 
&+ Et \cos{(5t)} + Ft \sin{(5t)} + G \cos{(5t)} + H \sin{(5t)}
\end{align*}
-->

This results in an \\( 8 \times 8 \\) system of equations, which I wouldn't ask you to solve by hand. We'll see how to solve them using Sage in a couple of weeks.

## Degeneracy

One question remains that we haven't gone into: what to do when part of the complementary solution \\( c_1 y_1 + c_2 y_2 \\) appears in \\( g(t) \\)?
\\[
    y'' + 5y' + 6y = 6e^{-2t}
\\]
No choice of \\( A \\) will make \\( Y = A \exp{(-2t)} \\) a solution to the above inhomogeneous equation, because such a function is a solution to the *associated homogeneous equation*. In such cases, guided either by past experience or divine inspiration, one uses a higher-degree polynomial. Let the coefficient be \\( At \\) rather than \\( A \\).

## A degenerate solution

Here, you can check that \\( 6t \exp{(-2t)} \\) is a solution. It is found by the same method as usual. But wait, you say!
<!-- \pause -->
What if we consider the equation \\( y'' + 4y' + 4y = 6 \exp{(-2t)} \\)?
<!-- \pause -->
If a little medicine is good, then a lot of medicine must be even better. So use a second-degree polynomial, and try to find \\( Y \\) of the form
\\[
    Y(t) = At^2 e^{-2t}.    
\\]

## The use of the method

For even mildly complicated functions \\( g(t) \\) the equations that result quickly become intractable for hand calculation. Yet knowing the technique of guessing the form of \\( Y \\) is useful, because a computer algebra system can be used to do the rest of the work of searching for the coefficients.

Once again I urge you to resist the impulse to memorize the table in the text with information about the degeneracies; just remember to increase the degree of the coefficient. It's ok to memorize the table that appears in this presentation, though.

## Coming attractions

Undetermined coefficients doesn't work as nicely if the inhomogeneous term \\( g(t) \\) isn't a linear combination of products of polynomials, trig functions, and exponentials. For that reason, we must investigate a second method: <!--\textsc{-->variation of parameters.<!--}-->