% Workshop 09
% Math 352 Differential equations
% April 16, 2014

\newcommand{\longlines}{\setlength{\answerlinelength}{0.7\linewidth}}
\newcommand{\medlines}{\setlength{\answerlinelength}{0.45\linewidth}}
\newcommand{\shortlines}{\setlength{\answerlinelength}{0.2\linewidth}}

\RenewDocumentCommand\vec{m}{\ensuremath{\mathbf{#1}}}

\subsection*{Matrices and vectors in Sage}

\begin{questions}

    \uplevel{For each of the following systems, make a conjecture about 
    whether the system has zero, one, or infinitely many solutions. Then use 
    Sage to solve each system. Record your answers and make any notes you 
    feel are necessary to help you remember the Sage procedures.}
    %\begin{parts}
    \begin{tabular}{p{3.5in}p{4in}}
        \question \begin{math}
            \begin{array}{rrrrrrr}
                3x &+& 3y &+& 12z &=& 6 \\
                x  &+& y  &+& 4z  &=& 2 \\
                2x &+& 5y &+& 20z &=& 10 \\
                -x &+& 2y &+& 8z  &=& 4  
            \end{array}
        \end{math}

        &

        \question \begin{math}
            \begin{array}{rrrrrrr}
                2x  &+& 10y &+& 2z &=& 6 \\
                x   &+& 5y  &+& 2z &=& 6 \\
                x   &+& 5y  &+& z  &=& 3 \\
                -3x &-& 15y &+& 3z &=& -9  
            \end{array}
        \end{math}

        \\[4ex]

        \question \begin{math}
            \begin{array}{rrrrrrrrr}
                2x &+& y &-& z &+& 2w &=& -6 \\
                3x &+& 4y & & &+& w &=& 1 \\
                x &+& 5y &+& 2z &+& 6w &=& -3 \\
                5x &+& 2y &-& z &-& w &=& 3
            \end{array}
        \end{math}

        &

        \question \begin{math}
            \begin{array}{rrrrrrrrr}
                x  &+& 2y &+& z  &+& 4w  &=& 11 \\
                3x &+& 6y &+& 5z &+& 12w &=& 30 \\
                x  &+& 3y &-& 3z &+& 2w  &=& -5 \\
                6x &-& y  &-& z  &+& w   &=& -9
            \end{array}
        \end{math}

        \\[4ex]

        \question \begin{math}
            \begin{array}{rrrrrrrrr}
                x  &+& y  &+& z &+& w  &=& 0 \\
                2x &+& 3y &+& z &-& 2w &=& 0 \\
                3x &+& 5y &+& z & &    &=& 0
            \end{array}
        \end{math}

        \vspace{4ex}

        &

        \question \begin{math}
            \begin{array}{rrrrrrrrr}
                x &+& 2y &+& z &+& 3w &=& 0 \\
                x &-& y  & &   &+& w  &=& 0 \\
                  & & 5y &-& z &+& 2w &=& 0
            \end{array}
        \end{math}
        
        \\[4ex]

        \question \begin{math}
            \begin{array}{rrrrrrrrr}
                x_1   &-& x_2  &-& 2x_3 &+& 3x_4  &=& -7 \\
                2x_1  &-& x_2  &+& 6x_3 &+& 6x_4  &=& -2 \\
                -2x_1 &+& x_2  &-& 4x_3 &-& 3x_4  &=& 0 \\
                3x_1  &-& 2x_2 &+& 9x_3 &+& 10x_4 &=& -5 
            \end{array}
        \end{math}

        &

        \question \begin{math}
            \begin{array}{rrrrrrrrrrr}
                2x_1 &-& 2x_2 &-&  x_3 &+& 6x_4 &-& 2x_5 &=& 1 \\
                x_1  &-&  x_2 &+&  x_3 &+& 2x_4 &-&  x_5 &=& 1 \\
                4x_1 &-& 4x_2 &+& 5x_3 &+& 7x_4 &-&  x_5 &=& 1 
            \end{array}
        \end{math}

        \end{tabular}

        \dwrspace{1}

        \question \begin{math}
            \begin{array}{rrrrrrrrrrr}
                3x_1 &-&  x_2 &+& 2x_3 &+& 4x_4 &+&  x_5 &=& 2  \\
                 x_1 &-&  x_2 &+& 2x_3 &+& 3x_4 &+&  x_5 &=& -1 \\
                2x_1 &-& 3x_2 &+& 6x_3 &+& 9x_4 &+& 4x_5 &=& -5 \\
                7x_1 &-& 2x_2 &+& 4x_3 &+& 8x_4 &+&  x_5 &=& 6
            \end{array}
        \end{math}

        \dwrspace{1}

        \question \begin{math}
            \begin{array}{rrrrrrrrrrr}
                 2x_1 &-&      &+& 3x_3 &+&       &-& 4x_5 &=& 5  \\
                 3x_1 &-& 4x_2 &+& 8x_3 &+&  3x_4 &-&      &=& 8  \\
                  x_1 &-&  x_2 &+& 2x_3 &+&   x_4 &-&  x_5 &=& 2  \\
                -2x_1 &+& 5x_2 &-& 9x_3 &+& -3x_4 &-& 5x_5 &=& -8 \\
            \end{array}
        \end{math}

    

    %\end{parts}

    \newpage

    % \fullwidth{{\Large \textbf{Matrix multiplication and linear 
    % combinations}}}

    \fullwidth{
        \section*{Matrix multiplication and linear 
        combinations}

        Not every matrix-vector product is defined. For example,
        an $m \times n$ matrix can be multiplied (on the right) only by
        an $n \times 1$ (column) vector. Observe that the number of columns 
        of the matrix is the same as the number of entries in the vector.

        This is necessary because the definition of the product $A\vec{x}$ is
        \begin{equation*}
            A \vec{x} = x_1 \vec{A}_1 + x_2 \vec{A}_2 + \cdots + 
                x _n \vec{A}_n,
        \end{equation*}
        where the $x_i$ are the entries of $\vec{x}$ and $\vec{A}_i$ is the 
        $i$th column of $A$ regarded as a (column) vector. This is what 
        people mean when they say that the definition of matrix 
        multiplication encodes linear combinations. 
    }

    \question Use Sage to evaluate the products.

        \begin{parts}
            \begin{tabularx}{\linewidth}{XX}
                \part $\displaystyle \begin{pmatrix}
                    1 & 2 & 1 \\ 
                    0 & 4 & -1
                \end{pmatrix} \begin{pmatrix}
                    4 \\ 2 \\ 5
                \end{pmatrix} = $ 
                &
                \part $\displaystyle \begin{pmatrix}
                    1 & 3 \\
                    2 & -1
                \end{pmatrix} \begin{pmatrix}
                    1 & 0 & -3 \\
                    4 & 1 & 2
                \end{pmatrix} =$
                \\
                \part $\displaystyle \begin{pmatrix}
                    -2 & -3
                \end{pmatrix} \begin{pmatrix}
                    1 & 2 & 1 \\ 
                    0 & 4 & -1
                \end{pmatrix} =$
                &
                \part Why won't this work? Try, and note Sage's complaint. 
                \begin{equation*}
                    \displaystyle \begin{pmatrix}
                        1 & 0 & -3 \\
                        4 & 1 & 2
                    \end{pmatrix} \begin{pmatrix}
                        1 & 2 & 1 \\ 
                        0 & 4 & -1
                    \end{pmatrix}
                \end{equation*}
                \\
            \end{tabularx}
        \end{parts}

    \question Use Sage to invert the following matrices.
        \begin{parts}
            \begin{tabularx}{\linewidth}{XX}
                \part \begin{math}
                   \begin{pmatrix}
                    1 & 1 \\
                    2 & 1 
                   \end{pmatrix}^{-1} = 
                \end{math}       
                &
                \part \begin{math}
                   \begin{pmatrix}
                   1 & -1 & 0 \\
                   1 & 0 & -1 \\
                   -6 & 2 & 3
                   \end{pmatrix}^{-1} = 
                \end{math}       
                \\
                \part \begin{math}
                   \begin{pmatrix}
                   1 & -1/2 & 3/4 \\
                   3/2 & 1/2 & -2 \\
                   1/4 & 1 & 1/2
                   \end{pmatrix}^{-1} = 
                \end{math}       
                &
                \part \begin{math}
                   \begin{pmatrix}
                   2 & 4 & 5/2 \\
                   -3/4 & 2 & 1/4 \\
                   1/4 & 1/2 & 2
                   \end{pmatrix}^{-1} = 
                \end{math}       
            \end{tabularx}
        \end{parts}

        \question Use Sage and matrix inversion to solve the system.
        %\begin{parts}
            %\begin{tabularx}{\linewidth}{XX}
                \begin{equation*}
                        \begin{array}{rrrrrrrrrrr}
                             x_1 &+& 2x_2 &-&  x_3 &+& 3x_4 &-& x_5 &=& -3  \\
                             x_1 &-& 3x_2 &+&  x_3 &+& 2x_4 &-& x_5 &=& -3  \\
                            2x_1 &+&  x_2 &+&  x_3 &-& 3x_4 &+& x_5 &=&  6  \\
                             x_1 &-&  x_2 &+& 2x_3 &+&  x_4 &-& x_5 &=&  2  \\
                            2x_1 &+&  x_2 &-&  x_3 &+& 2x_4 &+& x_5 &=& -3 \\
                        \end{array}
                    \end{equation*}
        \question Same as above.                
                \begin{equation*}
                        \begin{array}{rrrrrrrrrrrrr}
                             4x_1 &-& 2x_2 &+& 4x_3 &+& 2x_4 &-& 5x_5 &-&  x_6 &=& 1\\ 
                             3x_1 &+& 6x_2 &-& 5x_3 &-& 6x_4 &+& 3x_5 &+& 3x_6 &=& -11\\ 
                             2x_1 &-& 3x_2 &+&  x_3 &+& 3x_4 &-&  x_5 &-& 2x_6 &=& 0\\ 
                             -x_1 &+& 4x_2 &-& 4x_3 &-& 6x_4 &+& 2x_5 &+& 4x_6 &=& -9\\ 
                             3x_1 &-&  x_2 &+& 5x_3 &+& 2x_4 &-& 3x_5 &-& 5x_6 &=& 1\\ 
                            -2x_1 &+& 3x_2 &-& 4x_3 &-& 6x_4 &+&  x_5 &+& 2x_6 &=& -12\\ 
                        \end{array}
                    \end{equation*}
            %%    \end{tabularx}
            %\end{parts}
\end{questions} 
