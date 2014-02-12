% Workshop 01
% Math 352 Differential Equations
% February 12, 2014 

\setlength{\answerlinelength}{3in}

\section*{Linear differential equations}

In this workshop, you will see how to solve (remember the
technical meaning of this word) linear first-order
differential equations, that is, equations of the form
\begin{equation*}   
    \frac{dy}{dt} + p(t)y = g(t).
\end{equation*}

\begin{questions}

    \question Consider the equation $dy/dt + y/2 = (1/2)e^{t/3}$.
    \begin{parts}
        \part Multiply this equation by a new function $\mu(t)$. \answerline
        \part According to the product rule, what
        is $(\mu(t)y)'$? \answerline
        \part Make the left-hand sides of the two previous parts equal,
        and solve for $\mu(t)$. (You'll need to integrate.) 

        \dwrspace{1}

        \answerline

        \part Use the fundamental theorem of calculus to integrate each
        side of
        \begin{equation*}
            \left(\mu(t)y\right)' = (1/2)\mu(t) e^{t/3}.
        \end{equation*}
        Choose a convenient\emph{nonzero} value for the arbitrary constant.

        \dwrspace{1}

        \answerline

        \part Solve for $y$. (Your solution should have a constant of integration in it.)

        \dwrspace{1} \answerline
    \end{parts}

\newpage

    \question Consider the equation $y' - 2y = e^{2t}$.
    \begin{parts}
        \part Multiply this equation by a new function $\mu(t)$. \answerline
        \part According to the product rule, what
        is $(\mu(t)y)'$? \answerline
        \part Make the previous part equal to the left-hand side of the first part, and solve for $\mu(t)$.

        \dwrspace{1}

        \answerline

        \part Use the fundamental theorem of calculus to integrate the
        equation $(\mu(t)y)' = \mu(t) e^{2t}$.

        \dwrspace{1}

        \answerline

        \part Solve for $y$. (Your solution should have a constant of integration in it.)

        \dwrspace{1} \answerline
    \end{parts}

\end{questions}
