A *stochastic process* is a sequence of random variables indexed by set A, $(X_{\alpha})_{\alpha \in A}$. We can get creative with set A, in a [[Time series]] it will be time but in a [[poisson process]] it can take a 'spatial meaning. The set A gives the sequence *structure* through the mathematical structures in the set A such as ordering, closures, etc. 

Examples of stochastic processes: 

* Markov Chain
* Martingale 
* Poisson Process 
* Time series 
* Empirical Process
*  [[Brownian Motion]]


A probability distribution over a space of paths. It is easier to do some math with this definition. Here, the graph of a stock evolution is just one realization of the paths random variable. Note that in practice we may not have the joint distribution for real world time series data but we can construct things like random walks from known joint normals. 


The goal of studying stochastic processes is to observe the past up to time $t'$ and be able to make an intelligent prediction about the process in the future. Depending on the process this can be trivial or impossible and anywhere in between. 

If our stochastic process is: 

$$X_t = t \text{, with probability 1} $$

It is trivial to predict the future from the past if my stochastic process is:

  

If our stochastic process is: 

$$ 

X_t = 

\begin{cases}

t \forall t \text{, with probability 1/2} \\

-t \forall t \text{, with probability 1/2} \\

\end{cases}

$$

Even with randomness introuduced, we can still describe the exact evolution of $X_{t \geq t'}$ in this case if we know just one realization of $X_{t<t'}$. This is because the sp is dependent. 


Here the past can tell us nothing about the future because the sp is random and independent.

  

In the study of sp's we are interested in three types of questions:


* What are the dependencies in the sequence of value? (ie. will knowing the past will help me predict the future
* What is the long term behaviour? Does the sequence converge to something or just bounce around. Law of large numbers and CLT. 
* What are the boundary events? Events of interest to me, like how often does a stock drop by 10pts. 

# Discrete
Discrete time stochastic process: at discrete times $0 < t_1 < \dots t_N = 0$ we observe the respective stock prices $S_{t1} \dots S_{tN}$.

## independence
Any discrete time stochastic process with independent components satisfies the memory-less property.

*Proof:*
$$ P(X_{n+h} \leq x | X_1 \leq x_1, \dots, X_1 \leq x_n ) = \frac{P(X_{n+h} \leq x)  F(x_1, \dots x_n)}{F(x_1, \dots x_n)}$$

# Continuous
Continuous time stochastic process: for continuous $0 < t < T$ we have $S_t$ is a function with solid lines (does not have to be continuous itself though). Can't express continuity in computers because we can't express sets of  infinite cardinalities, like subsets of the real line, with finite resources. 


# Multivariate 

