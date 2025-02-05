

# Simple Random Walk
The discrete preliminary of a brownian motion 

THE fundamental discrete time stochastic process.

  

Denote our "steps of the walk" as $Y_i$ \textbf{i.i.d} random variables with: 

\[ Y_i = 

\begin{cases}

1 \text{, with prob 1/2} \\

-1 \text{, with prob 1/2} \\

\end{cases}

\]

then the \textit{one-dimensional} \textbf{random walk} $X_t$ is: 

\[ X_0 = 0 \text{ and } X_t = \sum_{i=1}^t Y_i \forall t>0 \]

It is one dimensional analogous to a drunk guy walking frowards and backwards along a straight line. Diagonal Motzkin paths make for a clearer picture. 

  

How does the random walk behave as time grows?

What is the distribution at time $t$? This is CLT stuff, the variance will be $t$ and the mean will be zero. Why is the variance t? well that's the maximum height about zero that the walk can achieve at time $t$ and it is only achieved if all steps are in one direction. 

  

  

The random walk is theoretically bounded by the lines $t$ and $-t$ which correspond to all up-steps and all down steps up to time $t$. In practice however, there is a smaller "sort of bound." It's something like a confidence interval asymptote in the shape of a $y^2 = t$ parabola. You can prove that it will cross the $x-$axis and both the  upper $\sqrt{t}$ and lower $-\sqrt{t}$ sides of a parabola (so it is not an asymptote) an infinite amount of times. 

  

Properties: 

\begin{enumerate}

\item $E(X_k) = 0$

\item Independent increments: If $0=t_0 \leq t_1 \leq \dots \leq t_k$, then $X_{t_{i+1}} -X_{t_i}$ are mutually independent. Ie. any and all disjoint subintervals of the random walk are independent. 

\item Stationary: For all $h \geq 1, t \geq 0$ the distribution of $X_{t+h}-X_t$ is the same as the distribution of $X_n$.

\end{enumerate}
