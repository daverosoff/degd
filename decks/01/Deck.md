% Separation of variables; introduction to modeling
% Math 352 Differential Equations
% February 14, 2014

# Recap

## Recap/warmup: linear equations

In Workshop 01, you saw how to solve some linear equations
of the form

$$ y' + ay = g(t). $$

In your groups, use the same technique to solve this equation:

- $y' + (2/t)y = 4t$
- Be careful when you are finding $\mu(t)$!

## In general

- To solve a linear equation, put it in standard form:

$$ y' + p(t) y = g(t) $$

- and use the integrating factor $\mu(t) = \exp(\int p(t) \; dt)$.

- You're free to memorize the formula in the text, but I'm not sure
that it is easier.

# Separation of variables

## Separable equations

- The next class of differential equations are the *separable* ones.
- These are the easiest to solve of all.

- Standard form: $M(x) + N(y)y' = 0$.

## The trick: a hidden $u$-substitution

Watch what happens when we integrate both sides $dx$:

$$M(x) + N(y)y' = 0$$

$$ \int M(x) \; dx + \int N(y) \textcolor{red}{\frac{dy}{dx} \; dx} = C $$

Now let's do a $u$-sub with $u = y$ (so $du = y' dx = \textcolor{red}{\dfrac{dy}{dx} \; dx}$)

$$ \int M(x) \; dx + \int N(y) \; \textcolor{red}{dy} = C $$

## The same idea, but with "separating"

Just write the equation this way, "multiplying through" by "dx":

$$ M(x) + N(y) \; \frac{dy}{dx} = 0 \implies  N(y) \; dy = -M(x) \; dx$$

- Now integrate and solve for $y$ (if possible).
- Often, you will not be able to isolate $y$.

## Example

$$ \frac{dy}{dx} = \frac{x^2}{1-y^2} $$

- The equation is separable, with standard form

$$ x^2 \; dx = (1 - y^2) \; dy $$

- Integrating, we find

$$ \frac{x^3}{3} + C = y - \frac{y^3}{3} $$

- Not possible to solve for $y$: solution curves are $-x^3 + 3y - y^3 = c$

## Work together

Just like with linear equations, you want to practice this
procedure until it feels natural.

- $y' = x^2/y$
- $y' + y^2 \sin{x} = 0$
- $y' = x^2/(y + yx^3)$
