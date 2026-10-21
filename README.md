State-Space Modelling & Luenberger Observer

Cranfield University | MSc Automotive Mechatronics

A MATLAB/Simulink classroom exercise exploring state-space modelling and state estimation using a second-order linear system.

1. Project Overview

This project demonstrates how a Luenberger Observer can estimate internal system states when not all states are directly measurable.

The project includes:

* A second-order state-space model.
* A Luenberger Observer designed using pole placement.
* A Simulink model of the plant and observer.
* Simulation results comparing measured and estimated outputs.

2. State-Space Modelling

A mathematical model provides an approximation of how a system behaves.

The state-space representation is:

[
\dot{x} = Ax + Bu
]

[
y = Cx + Du
]

A second-order system can be represented using two state variables.

In this exercise, only the first state is directly measured, while the observer estimates the internal states using the system model and available output measurement.

3. Luenberger Observer

Not every internal state of a physical system can be measured directly.

A Luenberger Observer uses the mathematical model and measured output to estimate the system states, provided the system is observable.

The observer equation is:

[
\dot{\hat{x}} = A\hat{x} + Bu + L(y-\hat{y})
]

where:

* (x): actual system states
* (\hat{x}): estimated states
* (y): measured plant output
* (\hat{y}): estimated output
* (L): observer gain

The difference between the measured and estimated outputs is used to correct the observer’s state estimates.

4. Observer Pole Placement

The plant poles are approximately:

-1.5 ± 1.3j

The observer poles were selected as:

[-15, -16]

The observer poles were placed further into the left half of the complex plane to obtain faster estimation error dynamics.

An important consideration is that excessively fast observers may become more sensitive to measurement noise.

5. Simulation Results

Simulink Model

Plant Output vs Observer Output

Observer State Estimation

Output Estimation Error

6. What I Learned

Through this exercise, I developed a better understanding of:

* State-space modelling: How a system can be represented using state variables and matrices.
* State estimation: Why observers are useful when some internal states cannot be measured directly.
* Observer feedback: How the output estimation error is used to correct estimated states.
* Pole placement: How observer pole locations influence estimation convergence.
* MATLAB and Simulink: How to implement and simulate a state-space model and observer.

7. Tools Used

* MATLAB
* Simulink
* State-Space Modelling
* Luenberger Observer
* Pole Placement

⸻

Based on a Cranfield University classroom exercise, with my own implementation and learning reflections.
