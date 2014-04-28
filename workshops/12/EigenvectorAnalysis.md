% Workshop 12
% Math 352 Differential equations
% April 25, 2014

\newcommand{\longlines}{\setlength{\answerlinelength}{0.7\linewidth}}
\newcommand{\medlines}{\setlength{\answerlinelength}{0.45\linewidth}}
\newcommand{\shortlines}{\setlength{\answerlinelength}{0.2\linewidth}}

\RenewDocumentCommand\vec{m}{\ensuremath{\mathbf{#1}}}

\subsection*{Eigenvectors, phase portraits, and stability}

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

    \question Explain in one sentence, with no mathematical symbols, what
    it means for a vector to be an eigenvector of some matrix.

    \question List the eigenvalues and eigenvectors of the following
    matrices. Make sure you preserve the correspondence between
    an eigenvalue and its eigenvector(s).

    \begin{tabularx}{\linewidth}{XX}
        \begin{parts}
            \part $\begin{pmatrix}
                1 & 2 \\ 0 & -3 
            \end{pmatrix}$ &
            \part $\begin{pmatrix}
                2 & 0 \\ 0 & -1
            \end{pmatrix}$ \\
            \part $\begin{pmatrix}
                2 & 3 \\ 3 & -6          
            \end{pmatrix}$ &
            \part $\begin{pmatrix}
                -6 & 2 \\ 3 & -1
            \end{pmatrix}$ \\
            \part $\begin{pmatrix}
                1 & -2 & 1 \\
                0 & 0 & 0 \\
                0 & 1 & 1        
            \end{pmatrix}$ &
            \part $\begin{pmatrix}
                1 & 3 & 0 \\
                3 & 1 & 0 \\
                0 & 0 & -2        
            \end{pmatrix}$ \\
            \part $\begin{pmatrix}
                1 & 0 & 0 & 0\\
                0 & 1 & 5 & -10 \\
                1 & 0 & 2 & 0 \\
                1 & 0 & 0 & 3         
            \end{pmatrix}$ &
            \part $\begin{pmatrix}
                2 & 1 & 0 \\
                0 & 2 & 0 \\
                0 & 0 & 2         
            \end{pmatrix}$ \\
        \end{parts}
    \end{tabularx}

\end{questions} 
