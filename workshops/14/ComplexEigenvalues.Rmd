% Workshop 14
% Math 352 Differential equations
% May 2, 2014

\newcommand{\longlines}{\setlength{\answerlinelength}{0.7\linewidth}}
\newcommand{\medlines}{\setlength{\answerlinelength}{0.45\linewidth}}
\newcommand{\shortlines}{\setlength{\answerlinelength}{0.2\linewidth}}

\RenewDocumentCommand\vec{m}{\ensuremath{\mathbf{#1}}}

\subsection*{Complex eigenvalues, limit cycles, spiral points}

Sage commands that will be useful include \texttt{plot\_vector\_field()},
\texttt{parametric\_plot()}, and
\texttt{A.eigenspaces\_right()} (where \texttt{A} is a square matrix). 
Remember, you can use the \texttt{help()} command to get information
on any of these commands, e.g. \texttt{help(parametric\_plot)}.

\begin{questions}

    \question For each of the systems of equations below, complete
    the following steps.
    \begin{compactenum}[i.]
        \item Use the method of eigenvectors to find the general 
        (real-valued) solution of the system.
        \item Use Sage to make a phase plot that shows three trajectories.
        \item 
    \end{compactenum}

    \begin{parts}
        \begin{tabularx}{\linewidth}{XX}
            
            \part \begin{align*}
                x'_1 &= x_2 \\
                x'_2 &= x_1
            \end{align*} &

            \part \begin{align*}
                x'_1 &= 3x_1 - 2x_2  \\
                x'_2 &= 4x_1 - x_2
            \end{align*} \\

            \part \begin{align*}
                x'_1 &= 2 & -\frac{5}{2} \\
                x'_2 &= \frac{9}{5} & -1
            \end{align*} &

            \part \begin{align*}
                x'_1 &= 2x_1 - 5x_2  \\
                x'_2 &= x_1 - 2x_2
            \end{align*} \\            
        \end{tabularx}
    \end{parts}
    
\end{questions} 
