% Introduction to modeling
% Math 352 Differential Equations
% February 19, 2014

# What is modeling?

## Modeling is using mathematics to...

- explain or describe real phenomena
- investigate questions about the world
- test ideas about the observed reality
- make predictions about reality and its phenomena

Instead of making observations and experiments in the real world,
a modeler makes these observations and experiments on *mathematical
representations* of the real world.

## Quantities are interrelated

> - The whole idea of *phenomena* is that changes don't happen
> in isolation. 
> - Instead they are causally bound to each other. 
> - Changing one part of a system may make other parts of it  change too.
> - Do they change in the same way? at the same rate? 
> - If not, how are these rates related?

## Quantities, rates

- Relationships between quantities: what mathematicians usually call *functions*
- The rates at which quantities change appear as these functions' *derivatives*. 

Hence, equations that model relationships among quantities and the
rates at which they change are naturally *differential equations*.

## A model is a postulated relationship

Informed by empirical knowledge of phenomena and drawing on previous
models or first principles, a modeler 

> - decides on the form of the relationship
> - works out the consequences
> - makes predictions
> - evaluates the correlations of the predictions with observation
> - repeats

## Models are evaluated

What makes a ``good'' model? 

Depends on the context. 

> - predictive power
> - agreement with previous results
> - useability (e.g. is it prohibitively slow? some climate models take
years of supercomputer time to run a single simulation) 
> - theoretical coherence 
> - sounding cool

are all important.

# Some simple models

## The heat equation

Models have to come from somewhere: 

- the *one-dimensional* heat equation is derived from physical first principles
    - conservation of energy and
    - Fourier's law of heat transfer, $\mathbf{q} = -k\dfrac{\partial u}{\partial x}$

Here, $\mathbf{q}$ is the heat flux density and $u$ is the temperature in a 
one-dimensional heated wire. This leads to the *heat equation*,

$$ \frac{\partial u}{\partial t} = \alpha \frac{\partial^2 u}{\partial x^2} $$

## Logistic growth of population

- Tiny babies know that bacteria populations grow exponentially
- This is because $P = rP$; the same fraction of the population is always
reproducing
- But does this growth continue forever?

Eventually, resource scarcity begins to limit the continued growth.

## The logistic differential equation

Let us denote by $K$ the upper limit of the population: that is,
if $P > K$ there are too many organisms for the available resources
and the population should decrease.

- One differential equation that well models this situation is the
logistic differential equation, $P = rP(K-P).

## Why is the logistic equation good?

In your groups, answer the questions (assuming $P > 0$):

- What if $P$ is much closer to $0$ than to $K$?
- What if $P$ is roughly midway between $0$ and $K$?
- What if $P$ is much closer to $K$ than $0$, but still less than $K$?
- What if $P > K$?

- Can you find any *constant* solutions of the logistic equation?

# A nonlinear model

## Predator--prey equations

If $x$ and $y$ are populations of two different organisms, then one model
for their interaction is the *Lotka--Volterra equations*, sometimes known
as the *predator--prey* equations. These are:
\begin{align*}
    \frac{dx}{dt} &= x(\alpha - \beta y) \\
    \frac{dy}{dt} &= -y(\gamma - \delta x)
\end{align*}
Here, $\alpha$, $\beta$, $\gamma$, and $\delta$ are parameters describing
the nature of the interspecies interaction.

This model was the gold standard in biomathematics for a generation, but 
may have been supplanted in the late 80s by an alternative model.

# Zen of modeling

## Don't jump to the solutions

- Start with differential equations
- Resist the urge to jump straight to solutions

## Interpret and predict, even w/o solution

- Logistic direction field
- What will happen if $P(0) > K$? if $P(0) < K$?
