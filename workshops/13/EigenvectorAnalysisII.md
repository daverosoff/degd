% Workshop 13
% Math 352 Differential equations
% April 28, 2014

\newcommand{\longlines}{\setlength{\answerlinelength}{0.7\linewidth}}
\newcommand{\medlines}{\setlength{\answerlinelength}{0.45\linewidth}}
\newcommand{\shortlines}{\setlength{\answerlinelength}{0.2\linewidth}}

\RenewDocumentCommand\vec{m}{\ensuremath{\mathbf{#1}}}

\subsection*{Plotting solutions in the phase plane}

Sage commands that will be useful include \texttt{plot\_vector\_field()},
\texttt{parametric\_plot()}, and
\texttt{A.eigenspaces\_right()} (where \texttt{A} is a square matrix). 
Remember, you can use the \texttt{help()} command to get information
on any of these commands, e.g. \texttt{help(parametric\_plot)}.

Last time, we saw that if the $2 \times 2$ matrix $A$ has real eigenvalues
$r_1$ and $r_2$ with corresponding eigenvectors $\vec{\xi}^{(1)}$
and $\vec{\xi}^{(2)}$, then
\begin{equation*}
    \vec{\xi}^{(1)} e^{r_1 t}, \quad \vec{\xi}^{(2)} e^{r_2 t}
\end{equation*}
are (vector-valued) solutions of the homogeneous system 
$\vec{x}' = A\vec{x}.$
\begin{questions}

    \question For each of the $2 \times 2$ systems, use Sage
    to plot solutions in the phase plane. Make some notes about
    how the solutions appear. The last two will be rather different
    from the others.

    \begin{parts}
        \begin{tabularx}{\linewidth}{XX}
            \part \begin{align*}
                x'_1 &= 3x_1 - 2x_2  \\
                x'_2 &= 2x_1 - 2x_2
            \end{align*} &

            \part \begin{align*}
                x'_1 &= x_1 - 2x_2  \\
                x'_2 &= 3x_1 - 4x_2
            \end{align*} \\

            \part \begin{align*}
                x'_1 &= 2x_1 - x_2  \\
                x'_2 &= 3x_1 - 2x_2
            \end{align*} &

            \part \begin{align*}
                x'_1 &= x_1 + x_2  \\
                x'_2 &= 4x_1 - 2x_2
            \end{align*} \\

            \part \begin{align*}
                x'_1 &= -2x_1 + x_2  \\
                x'_2 &= x_1 - 2x_2
            \end{align*} &

            \part \begin{align*}
                x'_1 &= \frac{5}{4} x_1 + \frac{3}{4} x_2  \\
                x'_2 &= \frac{3}{4} x_1 + \frac{5}{4} x_2
            \end{align*} \\

            \part \begin{align*}
                x'_1 &= 4x_1 - 3x_2  \\
                x'_2 &= 8x_1 - 6x_2
            \end{align*} &

            \part \begin{align*}
                x'_1 &= 3x_1 + 6x_2  \\
                x'_2 &= -x_1 - 2x_2
            \end{align*} \\

            
        \end{tabularx}
    \end{parts}
    
\end{questions} 
