% Module 01:
  Geometry of 3-dimensional space; 2-variable functions
% Math 251 Calculus 3
% Fall 2013

Welcome to the first online module for Calculus 3. These modules should be read, along with any other assigned readings or videos, prior to attending class. They are carefully designed to fit in with our class discussions, workshop activities, and WeBWorK.

### Our Context: $\mathbf{R}^3$

This module introduces two related mathematical frameworks: the geometry of the three-dimensional Euclidean space $\mathbf{R}^3$ and functions of two variables. 

<!-- We will explore the following topics in this module and the next:

* relationship between coordinates of a point and distances to coordinate planes
* relationship between coordinates of a point and distances to other points
* modeling with linear 2-variable functions
* contour maps and cross-sectional functions
* spheres, cylinders, and cones
* intersections of some common surfaces
* detect whether two vectors in $\mathbf{R}^3$ are parallel
* displacement vectors as differences of positions
* graphical depiction of linear relations among vectors -->

### Coordinate geometry of $\mathbf{R}^2$

When we talk about the plane as being 2-dimensional, what is it that we mean? We are used to addressing, or *coordinatizing* points in the plane, as a pair of numbers. These numbers are interpreted as distances to special lines (the *coordinate axes*). The axes must be understood ahead of time, or the coordinates are meaningless. We are so used to using this notion of coordinates that most of us superimpose the axes on the plane as soon as we picture it. 

For example, the point $(2,3)$ has distance $2$ to the $y$-axis and distance $3$ to the $x$-axis. 

Notice that the $y$-axis is the same thing as the collection or set of points whose $x$-coordinates are 0. Similarly, the $x$-axis is the same thing as the collection or set of points whose $y$-coordinates are 0. 

### Moving up a dimension

Where $\mathbf{R}^2$ has 2 coordinate axes, $\mathbf{R}^3$ has 3 *coordinate planes*. These are a system of 3 mutually perpendicular planes that all meet at a single point, called the origin. Its coordinates are $(0,0,0)$. Usually, we visualize one of the coordinate planes, called the $(x,y)$-plane, as horizontal. This plane consists of all the points whose coordinates look like $(x,y,0)$. That is, a point is in the $(x,y)$-plane if, and only if, its $z$-coordinate is zero.

The other two coordinate planes are defined similarly: the $(x,z)$-plane consists of points $(x, 0, z)$---that is, points whose $y$-coordinates are zero. 

> **Exercise**. Name and define the remaining coordinate plane. By "define", we mean to concretely describe the collection of points making up the plane, in terms of coordinates.

In $\mathbf{R}^3$, two planes that meet must intersect along a line. Any pair of coordinate planes thus have a line's worth of points in common.

For example, we may consider a point that lies on both the $(x,z)$-plane and the $(y,z)$-plane. Such a point has coordinates, say $(a,b,c)$. Since the point is on the $(x,z)$-plane, $b = 0$. On the other hand, the point is also on the $(y,z)$-plane, so $a = 0$ as well. This shows the point's coordinates look like $(0,0,c)$. It's clear by looking at the definitions that any point whose coordinates are of this form is on both coordinate planes.

By analogy with the situation in the plane, we define the $z$-axis of $\mathbf{R}^3$ to be the intersection of the $(x,z)$-plane and the $(y,z)$-plane. The example above shows that the $z$-axis is indeed a line, and that it is perpendicular to the remaining coordinate plane, which you defined in a previous Exercise.

> **Exercise**. Name and define two more coordinate axes. Characterize the points that live on these axes by describing how their coordinates look.

As we progress through the semester, most of the action will happen in this space $\mathbf{R}^3$. For now, we will spend a couple of weeks getting better acquainted with it, and learning some mentally convenient ways to talk about its points and its subspaces.

### Distances among points, lines, and planes

This is the subject of [Workshop 00][w00], which we will complete Friday in class.
<!--Workshop 00 needs to introduce distance formula and also things like distance to coordinate planes & axes.-->

### 2-variable functions

I have some bad news for you: you may be misinformed, based on my previous experience, about what a *function* is. It is the most important concept in mathematics, so I tend to be very picky when talking about it, at least until I am sure everyone is on board.

Most people have done so much algebraic training that they confuse *functions* with *expressions*, which are what mathematicians call algebraic formulas. Every expression gives rise to one (or many) functions, but the reverse is arguable. A function is rather a *rule* associating each of a collection of predetermined permissible "inputs" to exactly one output. The reason most people think expressions and functions are the same thing is that very often in mathematics, functions' rules are given algebraically. For example, the familiar *squaring function* is the function (rule) associating to each number the number obtained by multiplying it by itself. Who could argue that $f(x) = x^2$ is a more precise and easily understood description? 

Well, I might. I think this notation reinforces the confusion of the expression defining the rule---$x^2$---with the rule---$f(x)$---itself! Unfortunately, we are stuck with it. 

Functions are important to mathematicians for a lot of reasons, but they are important to physicists and chemists and biologists and engineers and psychologists and sociologists and statisticians and criminologists and so on because they *model phenomena*---that is to say, they evidently "exist" in what we usually call "reality", whatever that means. 

**Example**. The bill for a large print job depends on the number of pages in the document and on the number of copies printed. To be more specific, Phil's Phancy Printing charges a ten-dollar flat fee, plus 4 cents per page, plus 75 cents per copy for spiral binding. We can express this function more concisely as:

    bill = 10 + 4/100*(pages)*(copies) + 75/100*(copies)

This may look strange, if you are used to reading math books. A mathematician might be more accustomed to writing something like this:

> Let $c$ be the number of copies, and let $p$ be the number of pages in
> each copy. Then the amount $b$&nbsp;of the bill is given by 
> $$b = f(c,p) = 10 + \frac{4pc + 75c}{100}.$$

There's no real reason our functions or variables need to have single-letter names. When we work with the R or Sage mathematical programming systems, we will try to remember this and give our variables descriptive, memorable names. In these modules, I will often use traditional variable names, because they look nicer on the screen.

In the printing example, it's easy to see that adding a page to our document increases the bill by $0.04c$ dollars, where $c$ is the number of copies as before. In other words, changing $p$ (the number of pages) has an effect that depends on the value of $c$. The name of this phenomenon is "nonlinearity". In the expressions given above, the term $pc$ is the term that introduces it. 

### Modeling with linear functions

The following slogan is a way to recognize and characterize linear phenomena. Mathematicians and math users love linear phenomena, because they are the easiest phenomena to understand. 

**Slogan**. A phenomenon is linear with respect to some input if changing the input always produces the same change in the output---in other words, if the amount of the change doesn't depend on the starting conditions.

In the previous section, we observed that the printer's bill was not linear with respect to the number of pages. This is because adding a fixed number of pages doesn't always produces the same change in the bill. It depends on the number of copies.

> **Exercise**. Decide whether the printer's bill is linear with respect to the number of *copies*. It's OK to mimic the reasoning from the previous part.

Here is a modeling situation that is linear in both of its inputs. A trip to the clothing store might result in the purchase of $s$ shirts and $t$ pairs of trousers. Let's assume all the shirts have the same price, and all the trousers share a (possibly different) price. Travel to and from the store costs the same no matter what we buy, so that there is a fixed cost in this situation as well. 

    cost = trip_cost + s*(shirt_price) + t*(trou_price)

> **Exercise**. How would you use the formula above to check that the cost of the shopping trip really is linear in both inputs?

<!-- document ends; links past here -->

[w00]: ../../workshops/01/Workshop.pdf