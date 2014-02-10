Encoding:           UTF-8  
LaTeX Input:        mmd-beamer-header-rosoff  
Title:              Free harmonic oscillators
Subtitle:           (while supplies last)  
Affiliation:        The College of Idaho  
Author:             Math 352 Differential Equations  
Date:               15 April 2013  
base header level:  2  
LaTeX Mode:         beamer  
LaTeX Input:        mmd-beamer-begin-doc-rosoff  
LaTeX Footer:       mmd-beamer-footer  
CSS:                https://docralphv.collegeofidaho.edu/~drosoff/mystyle.css
HTML Header:        <script type="text/javascript" src="https://docralphv.collegeofidaho.edu/mathjax/MathJax.js?config=TeX-AMS-MML_HTMLorMML"></script>
<style>p {text-align:justify;font-size:110%;}
li {text-align:justify;font-size:110%;}
</style>
HTML header level:  2  

# Introduction

## Introduction: The equation of motion

The simplest physical model of a free harmonic oscillator is the vibrating spring we discussed last time, subject to Hooke's law (for the spring's restoring force) and viscous damping. The equation of motion (from Newton's Second Law) is: 
<!-- \pause -->
\\[
    mu'' = mg + F_s + F_d + F
\\]
where \\( F_s \\) is the spring restoring force, \\( F_d \\) is the *damping* due to air resistance, and \\( F \\) is any other external force applied to the system.

## The forces

- Hooke's Law: \\( F_s = -k(L + u) \\)
- Viscous damping: \\( F_d = -\gamma u' \\)
- Unforced vibration: \\( F = 0 \\)

Hooke's Law is certainly valid for small displacements \\( u \\). Similarly, damping due to air resistance is approximately viscous when \\( u' \\) is not too big. We shall take up the case \\( F \ne 0 \\) in the next section.

## The equation

As we saw last time, Hooke's Law implies that \\( mg = kL \\), so we can rewrite the equation of motion as
\\[
    mu'' + \gamma u' + ku = 0.
\\]

Let us first examine the case \\( \gamma = 0 \\), the *undamped free oscillation*.

## UFO

The characteristic equation is \\( mr^2 + k = 0 \\). This has two pure imaginary roots, \\( r = \pm i \sqrt{k/m} \\).

Hence, the general solution to the equation for the UFO is the general sinusoidal function with frequency \\( \omega_0 = \sqrt{k/m} \\).

The amplitude of the system is related to the total energy. Since \\( \gamma = 0 \\), all energy put into the system by the initial conditions will stay there forever.

## With damping

When \\( \gamma > 0 \\), the air resistance eventually consumes all the energy imparted by the system to the initial conditions.
\\[
    \lim_{t \to \infty} u = 0.
\\]
There are three kinds of damping.

- Underdamped: \\( D = \sqrt{\gamma^2 - 4mk} < 0 \\).
- Overdamped: \\( D > 0 \\).
- Critically damped: \\( D = 0 \\).
