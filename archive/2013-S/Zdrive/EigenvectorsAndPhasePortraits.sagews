︠16060579-aa8c-45b4-9efa-7ddca0c4ae3f︠
2+2
︡b91ca57b-83fa-4ee6-8b16-99912026d682︡{"stdout":"4\n"}︡
︠0297ae55-687a-4b0f-9d7b-58bf9818bfc1︠
t = var('t')
︡8daf6d32-8b77-4f0f-9995-a03318e0af20︡
︠58a8712f-c2a4-4faf-9ec2-55499267bebc︠
A = matrix(QQ, [[1, 1], [4, 1]]); show(A)
︡2769afb3-6bd3-40a0-9959-4a312d508403︡{"tex":{"tex":"\\left(\\begin{array}{rr}\n1 & 1 \\\\\n4 & 1\n\\end{array}\\right)","display":true}}︡
︠0e823bd1-e876-4e6c-9195-31381af17e8f︠
A.eigenvalues()
︡c0067273-e14c-431e-b783-2af291c04339︡{"stdout":"[3, -1]\n"}︡
︠af44de49-5141-4acc-a859-d1f2b2582f5c︠
A.eigenvectors_right()
︡001eb62e-aea4-400b-9eeb-a8d1ce88643f︡{"stdout":"[(3, [\n(1, 2)\n], 1), (-1, [\n(1, -2)\n], 1)]\n"}︡
︠f1638579-5031-4703-991e-f59f01625322︠
A = matrix(RR, [[-3, sqrt(2)],[sqrt(2), -2]])
︡fdafd8a1-e26b-4986-a43b-ad8ad263f7ad︡
︠17e6a239-eee3-4764-a779-deabe9faf440︠
show(A)
︡e1bcaf4a-a734-4695-95da-f33333722cb1︡{"tex":{"tex":"\\left(\\begin{array}{rr}\n-3.00000000000000 & 1.41421356237310 \\\\\n1.41421356237310 & -2.00000000000000\n\\end{array}\\right)","display":true}}︡
︠deec02b3-271e-407d-815d-630b3d0b2b47︠
︡f54f0b64-df36-4255-b3a7-4fa347443ebf︡
︠624380c5-d3ca-4c15-a923-e8aed24928c7︠
A
︡ddb0f0c9-efd4-40ef-a946-c5a6f0278a12︡{"stdout":"[-3.00000000000000  1.41421356237310]\n[ 1.41421356237310 -2.00000000000000]\n"}︡
︠17796ed5-0483-45a9-9dda-d6e7720f336f︠
show(A)
︡9d07130f-85a0-4f23-ad3e-7a3a1c7e5df1︡{"tex":{"tex":"\\left(\\begin{array}{rr}\n-3.00000000000000 & 1.41421356237310 \\\\\n1.41421356237310 & -2.00000000000000\n\\end{array}\\right)","display":true}}︡
︠8ec41ddb-acbd-4e82-b376-16b91dffcb87︠
A.eigenvalues()
︡c7f4dab8-0b19-4f63-85e6-6cce25db77bf︡{"stdout":"[-1.00000000000000, -4.00000000000000]\n"}︡
︠9b27c21b-4736-4eb6-83b2-fe00667c5710︠
A.eigenvectors_right()
︡e09768dc-ba24-40c1-b1eb-9c9c1b1bc62a︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/mnt/home/scucjzJZ/.sagemathcloud/sage_server.py\", line 412, in execute\n    exec compile(block, '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"matrix2.pyx\", line 5320, in sage.matrix.matrix2.Matrix.eigenvectors_right (sage/matrix/matrix2.c:30307)\n  File \"matrix2.pyx\", line 5256, in sage.matrix.matrix2.Matrix.eigenvectors_left (sage/matrix/matrix2.c:29605)\n  File \"matrix2.pyx\", line 4820, in sage.matrix.matrix2.Matrix.eigenspaces_left (sage/matrix/matrix2.c:26338)\nNotImplementedError: eigenspaces cannot be computed reliably for inexact rings such as Real Field with 53 bits of precision,\nconsult numerical or symbolic matrix classes for other options\n"}︡
︠211c6132-5765-454f-9e69-756ee36c2c5e︠
A = matrix(QQ, [[3, -4], [4, 3]])
︡40ff1ef1-1ad6-4720-aa7d-e5ef8891d172︡
︠dc913ab2-d68e-4eed-b36d-c87f6688506b︠
A.eigenvalues()
︡4dbc6a53-285c-46b4-aa39-66bf3cf650b1︡{"stdout":"[3 - 4*I, 3 + 4*I]\n"}︡
︠ca8868ee-d6fc-4278-8d2a-ab8281e10896︠
r1, r2 = A.eigenvalues()
︡f996da14-3389-4212-9703-fc64cf412a83︡
︠abb8f790-a47c-4ea5-aaf8-e112a9285e12︠
r1
︡86cc500e-7567-4888-a63a-4808fcd09e9b︡{"stdout":"3 - 4*I\n"}︡
︠73633a18-de16-40c0-bfcb-5a47dbebf36c︠
A.eigenvectors_right()
︡04b4e84f-fb32-4c20-a3c6-cc5c39e42472︡{"stdout":"[(3 - 4*I, [(1, 1*I)], 1), (3 + 4*I, [(1, -1*I)], 1)]\n"}︡
︠b4babe3c-43a5-4687-8474-9db4c427bcc6︠



x1, x2 = var('x1 x2'); plot_vector_field( ( x1 + x2, 4*x1 + x2), (x1, -3, 3), (x2, -3, 3))
︡f481461d-c6f7-4c81-937e-7476cedd4e2d︡{"file":{"show":true,"uuid":"4e03f56d-c3b8-43a2-b7ef-cd818b25a53c","filename":"/mnt/home/scucjzJZ/.sage/temp/compute3a/1092/tmp_zCEz90.png"}}︡
︠1a513299-a5b0-479c-87a8-465eae354c9c︠
n = sqrt( (x1 + x2)^2 + (4*x1 + x2)^2 )
︡c33526d5-63c1-4fc7-8cd4-de123c5b688d︡
︠320139c6-8b50-4564-a1f8-bd1bdc8475a4︠
plot_vector_field( ( (-x1 + 0*x2), (0*x1 + -4*x2) ), (x1, -3, 3), (x2, -3, 3))
︡b003ffa7-1230-40b3-900e-db06ff7b8478︡{"file":{"show":true,"uuid":"e5fa322d-f238-4cc5-8334-0e88c9444ef5","filename":"/mnt/home/scucjzJZ/.sage/temp/compute3a/1092/tmp_xZ7lyz.png"}}︡
︠66ecb07d-966f-4291-a645-3abe9c5cecc4︠

