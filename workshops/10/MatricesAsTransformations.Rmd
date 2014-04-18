% Workshop 10
% Math 352 Differential equations
% April 18, 2014

\newcommand{\longlines}{\setlength{\answerlinelength}{0.7\linewidth}}
\newcommand{\medlines}{\setlength{\answerlinelength}{0.45\linewidth}}
\newcommand{\shortlines}{\setlength{\answerlinelength}{0.2\linewidth}}

\RenewDocumentCommand\vec{m}{\ensuremath{\mathbf{#1}}}

\subsection*{Matrices as transformations}

This workshop will give you practice in visualizing matrix multiplication 
geometrically. It will make extensive use of the following fact about matrix 
multiplication: multiplication by a matrix $A$ \emph{preserves linear 
combinations}, that is,
\begin{equation*}
    A(c_1 \vec{x}_1 + c_2 \vec{x}_2 + \cdots + c_n \vec{x}_n)
        = c_1 A\vec{x}_1 + c_2 A \vec{x}_2 + \cdots + c_n  A \vec{x}_n,
\end{equation*}
for any vectors $\vec{x}_1, \vec{x}_2, \ldots, \vec{x}_n$ and coefficients
$c_1, c_2, \ldots, c_n$.
\begin{questions}
    \question
    Let $A$ be the matrix 
    \begin{equation*}
        \begin{pmatrix}
            2 & 0 \\ 0 & 3
        \end{pmatrix}.
    \end{equation*}
    This is an example of a \emph{diagonal} matrix. We say that the plane 
    $\R^2$ is \emph{spanned} by the standard unit vectors $\vec{i} = 
    \angl{1,0}$ and $\vec{j} = \angl{0,1}$. These vectors are drawn for you 
    below. On the right, sketch the vectors $A\vec{i}$ and $A\vec{j}$.
    Remember,
    \begin{equation*}
        A \begin{pmatrix}
           x_1 \\ x_2 
        \end{pmatrix} = x_1 \vec{A}_1 + x_2 \vec{A}_2.
    \end{equation*}

    \begin{minipage}[t]{0.49\textwidth}
    \vspace{0pt}
    \begin{tikzpicture}[xscale=0.40, yscale=0.40]
            \draw[style={gray}] (0,0) grid (16,16);
            \draw[->, style={gray, thick}] (0,8) -- (16,8);
            \draw[->, style={gray, thick}] (8,0) -- (8,16);
            \draw[->, style={densely dotted, black, ultra thick}] 
                (8,8) -- (10,8);
            \draw[->, style={loosely dashed, black, ultra thick}] 
                (8,8) -- (8,10);
            % \draw[->, style={densely dotted, red, ultra thick}] 
            %     (8,8) -- (14,12);
            % \draw[->, style={loosely dashed, blue, ultra thick}] 
            %     (8,8) -- (6,4);
    \end{tikzpicture}
    \end{minipage} \hspace{0.1em}
    \begin{minipage}[t]{0.49\textwidth}
    \vspace{0pt}
    \begin{tikzpicture}[xscale=0.40, yscale=0.40]
            \draw[style={gray}] (0,0) grid (16,16);
            \draw[->, style={gray, thick}] (0,8) -- (16,8);
            \draw[->, style={gray, thick}] (8,0) -- (8,16);
            % \draw[->, style={densely dotted, black, ultra thick}] 
            %     (8,8) -- (10,8);
            % \draw[->, style={loosely dashed, black, ultra thick}] 
            %     (8,8) -- (8,10);
            % \draw[->, style={densely dotted, red, ultra thick}] 
            %     (8,8) -- (14,12);
            % \draw[->, style={loosely dashed, blue, ultra thick}] 
            %     (8,8) -- (6,4);
    \end{tikzpicture}
    \end{minipage}
    
    Now use colored pencils or shading/crosshatching to demarcate some
    $1 \times 1$ ``tiles'' on the left. Using the same colors or shading, fill in 
    appropriate shapes for the \emph{images} of your squares on the right.

    The matrix $A$ gives rise to a function $L_A(\vec{x}) = A\vec{x}$, called
    \emph{left multiplication} by $A$. You have drawn a picture of this 
    function that is analogous to the graph of an ordinary function. The 
    actual graph of $L_A$ is a surface in $\R^4$, which is difficult to draw.
 
        \begin{parts}
            \part Describe, in a sentence without mathematical notation, the 
            ``action'' of the matrix $A$ on the squares.

            \dwrspace{1}

            \part What effect does $A$ have on area? On angles?

            \dwrspace{1}

        \end{parts}

    \newpage

    \question 
    On the right, sketch the vectors 
    $A\vec{i}$ and $A\vec{j}$ where 
    \begin{equation*}
        A = \begin{pmatrix}
            3 & -1 \\ 2 & -2
        \end{pmatrix},
    \end{equation*}
    and color or shade grids as before to construct a picture of 
    $L_A(\vec{x})$.
    
    \begin{minipage}[t]{0.49\textwidth}
    \vspace{0pt}
    \begin{tikzpicture}[xscale=0.50, yscale=0.50]
            \draw[style={gray}] (0,0) grid (16,16);
            \draw[->, style={gray, thick}] (0,8) -- (16,8);
            \draw[->, style={gray, thick}] (8,0) -- (8,16);
            \draw[->, style={densely dotted, black, ultra thick}] 
                (8,8) -- (10,8);
            \draw[->, style={loosely dashed, black, ultra thick}] 
                (8,8) -- (8,10);
            % \draw[->, style={densely dotted, red, ultra thick}] 
            %     (8,8) -- (14,12);
            % \draw[->, style={loosely dashed, blue, ultra thick}] 
            %     (8,8) -- (6,4);
    \end{tikzpicture}
    \end{minipage} \hspace{0.1em}
    \begin{minipage}[t]{0.49\textwidth}
    \vspace{0pt}
    \begin{tikzpicture}[xscale=0.50, yscale=0.50]
            \draw[style={gray}] (0,0) grid (16,16);
            \draw[->, style={gray, thick}] (0,8) -- (16,8);
            \draw[->, style={gray, thick}] (8,0) -- (8,16);
            % \draw[->, style={densely dotted, black, ultra thick}] 
            %     (8,8) -- (10,8);
            % \draw[->, style={loosely dashed, black, ultra thick}] 
            %     (8,8) -- (8,10);
            % \draw[->, style={densely dotted, red, ultra thick}] 
            %     (8,8) -- (14,12);
            % \draw[->, style={loosely dashed, blue, ultra thick}] 
            %     (8,8) -- (6,4);
    \end{tikzpicture}
    \end{minipage}

    \begin{parts}
        \part Does $L_A$ preserve orientation? That is, is the 
        counterclockwise angle from $L_A(\vec{i})$ to $L_A(\vec{j})$ acute?
        \part What effect does $L_A$ have on area?
        \part What is the determinant $\det{A}$?
    \end{parts}

    \question Using just one grid for each, repeat the exercises for the 
    matrices
    \begin{equation*}
        A = \begin{pmatrix}
            3 & 0 \\
            0 & 0
        \end{pmatrix}, \quad B = \begin{pmatrix}
            2 & 4 \\
            -1 & -2
        \end{pmatrix}.
    \end{equation*} 

    \begin{minipage}[t]{0.49\textwidth}
    \vspace{0pt}
    \begin{tikzpicture}[xscale=0.50, yscale=0.50]
            \draw[style={gray}] (0,0) grid (16,16);
            \draw[->, style={gray, thick}] (0,8) -- (16,8);
            \draw[->, style={gray, thick}] (8,0) -- (8,16);
            % \draw[->, style={densely dotted, black, ultra thick}] 
            %     (8,8) -- (10,8);
            % \draw[->, style={loosely dashed, black, ultra thick}] 
            %     (8,8) -- (8,10);
            % \draw[->, style={densely dotted, red, ultra thick}] 
            %     (8,8) -- (14,12);
            % \draw[->, style={loosely dashed, blue, ultra thick}] 
            %     (8,8) -- (6,4);
    \end{tikzpicture}
    \end{minipage} \hspace{0.1em}
    \begin{minipage}[t]{0.49\textwidth}
    \vspace{0pt}
    \begin{tikzpicture}[xscale=0.50, yscale=0.50]
            \draw[style={gray}] (0,0) grid (16,16);
            \draw[->, style={gray, thick}] (0,8) -- (16,8);
            \draw[->, style={gray, thick}] (8,0) -- (8,16);
            % \draw[->, style={densely dotted, black, ultra thick}] 
            %     (8,8) -- (10,8);
            % \draw[->, style={loosely dashed, black, ultra thick}] 
            %     (8,8) -- (8,10);
            % \draw[->, style={densely dotted, red, ultra thick}] 
            %     (8,8) -- (14,12);
            % \draw[->, style={loosely dashed, blue, ultra thick}] 
            %     (8,8) -- (6,4);
    \end{tikzpicture}
    \end{minipage}

\end{questions} 
