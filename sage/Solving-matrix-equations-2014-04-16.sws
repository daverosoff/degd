︠5b5889d5-0d63-43d9-badd-350a5a00f24di︠
%html
We wish to investigate the solutions of the equation
\begin{equation*}
    \begin{pmatrix}
        3 & 3 & 12 \\ 1 & 1 & 4 \\ 2 & 5 & 20 \\ -1 & 2 & 8 
    \end{pmatrix} \begin{pmatrix} x \\ y \\ z \end{pmatrix}
        = \begin{pmatrix} 6 \\ 2 \\ 10 \\ 4 \end{pmatrix}.
\end{equation*}
We can build the "augmented matrix" of our system and use rref() to find its solutions.
︡72ace748-ce24-46ac-8391-1e770bfa2d8a︡{"html":"We wish to investigate the solutions of the equation\n\\begin{equation*}\n    \\begin{pmatrix}\n        3 & 3 & 12 \\\\ 1 & 1 & 4 \\\\ 2 & 5 & 20 \\\\ -1 & 2 & 8 \n    \\end{pmatrix} \\begin{pmatrix} x \\\\ y \\\\ z \\end{pmatrix}\n        = \\begin{pmatrix} 6 \\\\ 2 \\\\ 10 \\\\ 4 \\end{pmatrix}.\n\\end{equation*}\nWe can build the \"augmented matrix\" of our system and use rref() to find its solutions."}︡
︠92798768-ad41-427b-91e5-f8c8a3fea7c9︠
A1 = matrix(QQ, 4, [3,3,12,6,1,1,4,2,2,5,20,10,-1,2,8,4]); show(A1)
︠befc09d5-855e-4ecb-be92-caf9099375e8︠
show(A1.rref())
︠680fa474-2937-4562-9bf3-8e7d15912fefi︠
%html
Or, we can build the coefficient matrix and right-hand-side vector separately. Note that the second command replaces the value previously stored in `A_1`.
︡58a884a4-cee3-470f-884b-62802edce7a3︡{"html":"Or, we can build the coefficient matrix and right-hand-side vector separately. Note that the second command replaces the value previously stored in `A_1`."}︡
︠e8ef304d-8bd9-4d3f-bf10-d1a32e447df8︠
b1 = A1.matrix_from_columns([3]); A1 = A1.matrix_from_columns([0,1,2]); show(b1); show(A1)
︠606ea1c7-2b3f-4b3d-9508-cf5ab87792b0i︠
%html
Now we can obtain a solution using either of the equivalent commands:
︡1f44ef21-d486-4c9c-840c-690a78f52dfa︡{"html":"Now we can obtain a solution using either of the equivalent commands:"}︡
︠cabf1901-aea0-43f7-8cc4-22e535c4ce0a︠
A1.solve_right(b1)
︠cb2d4c31-8d52-440c-a886-1cd3c03ec0b5︠
A1\b1
︠d484e55a-1180-4523-9cb0-97c82e8e4372i︠
%html
<p>Observe that we receive no warning that the solution is not unique. These two commands simply produce one solution or throw a ValueError if no solution exists. </p>

<p>For complete information about the solutions of the equation `Ax = b`, we need to examine the rref of the matrix `A_1`.</p>
︡e2b9198f-c0a2-42b6-bba0-90d3cd8124f2︡{"html":"<p>Observe that we receive no warning that the solution is not unique. These two commands simply produce one solution or throw a ValueError if no solution exists. </p>\n\n<p>For complete information about the solutions of the equation `Ax = b`, we need to examine the rref of the matrix `A_1`.</p>"}︡










