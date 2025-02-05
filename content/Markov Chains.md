
\subsubsection{Markov Chain}

Collection of stochastic process whose effect of the past on the future is summarized \textbf{only} by the current state. These ones are more managable than stuff that depends on entire evolution (like asian options?)

  

A simple random walk is a markov chain: What happens at $t'$ just depends on where you were at time $t'-1$ since you can only go up or down one step at a time. 

  

Formally: A discrete time stochastic process $X_1, X_2, \dots$ is a markov chain if: 

\[ P(X_{t+1}=s | X_0, X_1, \dots , X_t) = P(X_{t+1}=s | X_t)\] 

  