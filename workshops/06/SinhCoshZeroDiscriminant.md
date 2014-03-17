% Workshop 06
% Math 352 Differential equations
% March 14, 2014

\newcommand{\longlines}{\setlength{\answerlinelength}{0.7\linewidth}}
\newcommand{\medlines}{\setlength{\answerlinelength}{0.45\linewidth}}
\newcommand{\shortlines}{\setlength{\answerlinelength}{0.2\linewidth}}

\subsection*{Second-order linear equations: discriminant zero}

In this workshop, you'll examine the last remaining case of the
second-order linear differential equation: discriminant $0$. Then,
you'll meet another way of writing the general solution of a special class of
second-order equations.

\medlines

\begin{questions}

    \question Consider the differential equation $y'' + 2y' + y = 0$.
    What is the discriminant of its characteristic polynomial?

    \dwrspace{1} \answerline

    \question Use the characteristic polynomial to find an exponential
    solution of the equation above. That is, find a solution of the
    form $y_1 = e^{rt}$.

    \dwrspace{1} \answerline

    \uplevel{Experience, general principles, and your sense of mathematical
        justice indicate there should be another solution $y_2$, evidently 
        not of exponential type. It should satisfy $W(y_1,y_2) = 0$ with 
        $y_1$ from above.}

    \question You are visited in a dream by a spirit who suggests you 
    try to find a solution of the form $y_2(t) = u(t)y_1(t)$, where $y_1$
    is the exponential solution you found. Follow your dream, write small, and simplify as you go.

    \dwrspace{6} \answerline

    \question Check that the Wronskian $W(y_1,y_2)$ is nonzero and write down
    the general solution of $y'' + 2y' + y = 0$.

    \dwrspace{1} \answerline

    \newpage

    \question On a separate piece of paper, repeat the above procedure for 
    the following differential equations. Use the initial conditions, when
    given, to find particular solutions. Be careful with your calculus.
    \begin{parts}
        \part $y'' - 4y' + 4y = 0$
        \part $4y'' - 12y' + 9y = 0$, $y(0) = 1$, $y'(0) = -1$
        \part $169y'' - 234y' + 81y = 0$, $y(0) = 0$, $y'(0) = 4$
    \end{parts}

    \uplevel{\subsection*{Special cases: zero linear term}}

    \question Let $a$ and $b$ be some numbers. Solve the initial value 
    problem $y'' + y = 0$, $y(0) = a$, $y'(0) = b$.
    
    \dwrspace{1} \answerline

    \question Now solve the initial value problem $y'' - y = 0$, 
    $y(0) = a$, $y'(0) = b$.

    \dwrspace{1} \answerline

    \question Recall that the \emph{hyperbolic trigonometric functions} are 
    given by the formulas
    \begin{equation*}
        \cosh{t} = \frac{e^t + e^{-t}}{2}, \quad
        \sinh{t} = \frac{e^t - e^{-t}}{2}.
    \end{equation*}
    Check that the Wronskian $W(\cosh{t}, \sinh{t})$ is nonzero (you may want to do some of the work on a separate page). Explain why
    this means that every solution of $y'' - y = 0$ can \emph{also} be 
    written as a linear combination of $\cosh{t}$ and $\sinh{t}$.

    \dwrspace{3}

    \question Using the new formulation of the general solution of 
    $y'' - y = 0$, 
    \begin{equation*}
        y = c_1 \cosh{t} + c_2 \sinh{t},
    \end{equation*}
    solve the initial value problem $y'' - y = 0$, $y(0) = a$, $y'(0) = b$ 
    from above.

    \dwrspace{2} \answerline
\end{questions}
