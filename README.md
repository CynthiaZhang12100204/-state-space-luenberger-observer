State-Space Modelling & Luenberger Observer
Cranfield University | MSc Automotive Mechatronics
A MATLAB/Simulink classroom exercise exploring state-space modelling and state estimation using a second-order linear system.
What I Implemented
	•	A second-order state-space model using A, B, C and D matrices.
	•	A Luenberger Observer to estimate internal system states.
	•	Observer pole placement at [-15, -16].
	•	Simulink simulations comparing plant and estimated outputs.
What I Learned
1. State-space modelling
A mathematical model approximates the behaviour of a physical system. A second-order system can be represented using two state variables.
2. Why an observer is needed
Not all internal states can be measured directly. An observer uses a mathematical model and available measurements to estimate unmeasured states, provided the system is observable.
3. How the observer works
The observer predicts the system output, compares it with the measured output, and uses the difference to correct its state estimates through the observer gain L.
4. Observer pole placement
Observer poles are generally selected to provide faster estimation dynamics than the physical system. However, excessively fast observers can be more sensitive to measurement noise.
Simulation Results
Plant Output vs Observer Output
Estimated States
Output Estimation Error
Tools
MATLAB | Simulink | State-Space Modelling | Luenberger Observer
Based on a Cranfield University classroom exercise, with my own implementation notes and learning reflections.
