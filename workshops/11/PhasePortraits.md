% Workshop 11
% Math 352 Differential equations
% April 21, 2014

\newcommand{\longlines}{\setlength{\answerlinelength}{0.7\linewidth}}
\newcommand{\medlines}{\setlength{\answerlinelength}{0.45\linewidth}}
\newcommand{\shortlines}{\setlength{\answerlinelength}{0.2\linewidth}}

\RenewDocumentCommand\vec{m}{\ensuremath{\mathbf{#1}}}

\subsection*{Phase portraits}

When you submit this worksheet, attach printouts including the graphics
(you don't need to include your whole Sage session).

\begin{questions}

    \question Consider an undamped spring-mass system whose position function 
    satisfies the differential equation

    \begin{equation*}
        9u'' + 4u = 0.
    \end{equation*}

    Find a fundamental set of solutions for this equation.

    \dwrspace{1}

    \question Write $u_1 = u$ and $u_2 = u'$. Then the equation above becomes
    \begin{align*}
        u'_1 &= u_2 \\
        u'_2 &= -\frac{4}{9} u_1.
    \end{align*}
    Write this system in matrix--vector form: that is, in the form $\vec{u}' = A \vec{u}$.

    \dwrspace{1}

    \newpage

    \fullwidth{The Sage functions \texttt{plot\_vector\_field} and \texttt{parametric\_plot}
    are very helpful in visualizing the solutions of systems of differential equations.}

    \question In Sage, initialize variables \texttt{x} and \texttt{y} and a matrix 
    \texttt{A} containing your coefficients from above. Then use the \texttt{plot\_vector\_field}
    command to plot the vector field $A\angl{x,y}$.

    \dwrspace{1}

    \question It is simple to overlay plots in Sage. Instead of just calling the 
    \texttt{plot\_vector\_field} function, store its output in a variable. Then use the
    \texttt{parametric\_plot} function to store the phase plot of a particular solution. 
    Invoke \texttt{show} on the \emph{sum} of your plots to superimpose them.

    \dwrspace{1} 

    \question Add a few more trajectories to your image. If you are feeling adventurous,
    use a \texttt{for} loop to automate the procedure.

    \dwrspace{1}

    \question Choose a damping coefficient $\gamma > 0$ and repeat the process. Note
    the differences you observe below.

    \dwrspace{1}

    \question Repeat the process for the matrix
    \begin{equation*}
        A = \begin{pmatrix}
            1 & 4 \\ 1 & 1
        \end{pmatrix}.
    \end{equation*}
    Can you complete the analysis? Note the difficulties below.

    \dwrspace{1}

\end{questions} 
