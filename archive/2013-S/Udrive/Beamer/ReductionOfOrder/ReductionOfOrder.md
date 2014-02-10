Encoding:           UTF-8
LaTeX Input:        mmd-beamer-header-rosoff
Title:              Reduction of Order
Subtitle:           A generalization of the repeated-roots technique
Affiliation:        The College of Idaho
Date:               22 March 2013
base header level:  2
LaTeX Mode:         beamer  
Font theme:         structurebold
Color theme:        crane
Theme:              Szeged
LaTeX Input:        mmd-beamer-begin-doc-rosoff  
LaTeX Footer:       mmd-beamer-footer  

# Recap

## Last time: repeated roots

Last time, we completed our investigation of the second-order linear homogeneous equation
\\[ ay'' + by' + cy = 0 \\]
by finding a general solution to the equation in the last remaining case, in which \\( D = b^2 - 4ac = 0 \\). 

A new technique was necessary, because the exponential trick only gave us half of the general solution, the 1-dimensional family \\( cy_1 = ce^{(-b/2a)t} \\).

## Last time: guess-and-check

In the group worksheet, you found that if \\( v(t) \\) is an unknown function, then \\( v y_1 \\) is a solution to the DE---that is,
\\[ a(v y_1)'' + b(v y_1)' + c(v y_1) = 0, \\]
---if and only if \\( v'' = 0 \\). A bit of calculus and a moment's reflection shows that \\( v = \alpha t + \beta \\) in this case.

Thus you generated a new class of solutions, the functions
\\[ (\alpha t + \beta) e^{(-b/2a)t}. \\]

Notice! it's a 2-dimensional family. Maybe it's the general solution?

## Last time: the general solution 

- Now, it is true that this new class of solutions is a suitable "other half" of our general solution in the sense that its Wronskian with \\( y_1 \\) is everywhere nonzero. But it is not optimally efficient, because \\( y_1 \\)  appears in the new class! Put \\( \alpha = 0 \\) and \\( \beta = 1 \\) to obtain it.
- The part of your solution that is fundamentally "new" is \\( y_2 = c_2 te^{(-b/2a)t} \\). You can check that the Wronskian \\( W(y_1, y_2) \\) is still nonzero, so that these two functions generate all solutions to the differential equation through linear combinations.
- It is equally true that the new solution \\( \alpha y_2 + \beta y_1 \\) "is" the general solution. There's no contradiction there.

# Reduction of order for nonconstant coefficients

## The magic secret of Wronskians

You might be a bit uncomfortable about my blithe replacement of 
\\[ (\alpha t + \beta) e^{(-b/2a)t}  = \alpha t e^{(-b/2a)t} + \beta e^{(-b/2a)t}\\]
with 
\\[ c_2 t e^{(-b/2a)t}. \\]

- The fact is, linear algebra provides us with a general theory of why we can make replacements like this, but we haven't the time to go into it. 
<!-- \pause -->
- The great thing is, we don't need to! *Once we have a nonzero Wronskian, it makes no difference where the solutions came from.* We can compute them, <!--\pause--> guess them, <!--\pause--> or find them scrawled in blood on the walls of an ancient tomb. The Wronskian doesn't care, and tells us definitively that we have solved the equation.

## The general method

- There was a bit of confusion last time---I promised a *first-order* equation for you to solve, and didn't deliver, since the promised equation for \\( v \\) turned out to look like a second-order one.
- Whenever we have found---again, by any means necessary---a single solution to a second-order linear homogeneous ODE (even one with nonconstant coefficients), the method of "promoting \\( c \\) to a function" can get us the other half.

## The general method: in general
- Suppose that, in the tomb of an ancient king, we find the following equations scrawled in blood on the wall in a shaky but regal hand:
\\[ 2t^2 y'' + 3t y' - y = 0, \quad y_1 = t^{-1}. \\]
Evidently \\( y_1 \\) is a solution (easily checked), and since the ODE is linear and homogeneous, we know that \\( cy_1 \\) is also a solution for all real \\( c \\).
- We will use the method of reduction of order---promoting \\( c \\) to a function---to obtain another solution \\( y_2 \\) that is the missing piece of the general solution; in other words, we will have
\\[ W(y_1, y_2) \ne 0. \\]

## Using the method 

We write \\( y_2 = vy_1 \\) and substitute in. Observe that \\( (vy_1)' = v'y_1 + vy'_1 \\) and that \\( (vy_1)'' = v''y_1 + 2v'y'_1 + vy''_1 \\). Substitution back into the original differential equation then gives us<!--
\begin{align*}
0 &= 2t^2 (v''y_1 + 2v'y'_1 + vy''_1) + 3t (v'y_1 + vy'_1) - vy_1 \\
  &= (2t^2 y_1) v'' + (4t^2 y'_1 + 3t y_1) v' + (2t^2 y''_1 + 3ty'_1 - y_1) v \\
  &= (2t^2 y_1) v'' + (4t^2 y'_1 + 3t y_1) v'.
\end{align*}
-->
The coefficient of \\( v \\) is zero, because \\( y_1 \\) is a solution to the ODE!

## The method continues

Now we can see how the order has been reduced. The equation
\\[ (2t^2 y_1) v'' + (2t^2 y'_1 + 3t y_1) v' = 0 \\]
is, admittedly, a second-order equation in \\( v \\). But it is a first-order equation in \\( v' \\), in fact a separable one. The textbook details the solution of this equation---much easier, if we put \\( y_1 = t^{-1} \\) throughout.

- I suggest you check for yourself, without looking in the text, if possible, that in this example we find \\( v = t^{1/2} \\) and therefore \\( y_2 = t^{-1/2} \\).

## SPRING BREAK

<!--{\Huge \textsc{-->Have a great break!<!--}}\dwrspace{1}-->

- ...and be ready for more guess-and-check fun when we come back on the 1st.
- We'll start with section 3.5. 
- Some daily problems are assigned from the last few sections.    