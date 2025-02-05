A *stochastic process* is a sequence of random variables indexed by set A, $(X_{\alpha})_{\alpha \in A}$. We can get creative with set A, in a [[Time series]] it will be time but in a [[poisson process]] it can take a 'spatial meaning. The set A gives the sequence *structure* through the mathematical structures in the set A such as ordering, closures, etc. 

Examples of stochastic processes: 

* Markov Chain
* Martingale 
* Poisson Process 
* Time series 
* Empirical Process
*  [[Brownian Motion]]



\section{Stochastic processes}

A \textit{stochastic process} is:

\begin{itemize}

\item \textbf{Defn(1):} A sequence of random variables indexed by time (e,j. $X_0, X_1, \dots$ for discrete time)

\item \textbf{Defn(2):} A probability distribution over a space of paths. It is easier to do some math with this definition. Here, the graph of a stock evolution is just one realization of the paths random variable. Note that in practice we may not have the joint distribution for real world time series data but we can construct things like random walks from known joint normals. 

\end{itemize}

  

The goal of studying stochastic processes is to observe the past up to time $t'$ and be able to make an intelligent prediction about the process in the future. Depending on the process this can be trivial or impossible and anywhere in between. 

  

If our stochastic process is: 

\[ X_t = t \text{, with probability 1} \]

It is trivial to predict the future from the past if my stochastic process is:

  

If our stochastic process is: 

\[ 

X_t = 

\begin{cases}

t \forall t \text{, with probability 1/2} \\

-t \forall t \text{, with probability 1/2} \\

\end{cases}

\] 

Even with randomness introuduced, we can still describe the exact evolution of $X_{t \geq t'}$ in this case if we know just one realization of $X_{t<t'}$. This is because the sp is dependent. 

  

  

If our stochastic process is: 

\[ 

X_t = 

\begin{cases}

t \text{, with probability 1/2} \\

-t \text{, with probability 1/2} \\

\end{cases}

\]

Here the past can tell us nothing about the future because the sp is random and independent.

  

In the study of sp's we are interested in three types of questions:

\begin{enumerate}

\item What are the dependencies in the sequence of value? (ie. will knowing the past will help me predict the future)

\item What is the long term behaviour? Does the sequence converge to something or just bounce around. Law of large numbers and CLT. 

\item What are the boundary events? Events of interest to me, like how often does a stock drop by 10pts. 


# Discrete
Discrete time stochastic process: at discrete times $0 < t_1 < \dots t_N = 0$ we observe the respective stock prices $S_{t1} \dots S_{tN}$.

# Continuous
Continuous time sp: for continuous $0 < t < T$ we have $S_t$ is a function with solid lines \textbf{(does not have to be continuous itself though)}. Can't express continuity in computers because we can't express sets of  infinite cardinalities, like subsets of the real line, with finite resources. 

\end{itemize}

\item $V_t$ is the value of the option. It is a function of time $t$ and the value of the underlying stock at or up-to time $t$, so: $V_t = V(S_t,t )$.

  

\end{enumerate}


# Multivariate 

