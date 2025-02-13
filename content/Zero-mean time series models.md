
# IID Noise

A [[Stochastic Processes#Discrete]] $\{X_i : i = 1,2\dots n\}$ with: 

* **Independence** property is satisfied: joint distribution = product of marginals.
*  $E[X_i] = 0 \forall i$

# White Noise 

Sequence of **uncorrelated** random variables $\{X_1, X_2, \dots \}$ with zero mean and finite variance. Denoted $X_i \sim WN(0, \sigma)$

* $E(X_i)=0$ 
* $Cov(X_i, X_j) = 0$  $\forall i \neq j$ 


# Connection
What is the relationship between white noise and iid noise?

Independence is a stronger condition than non-correlation. For independence we need to know joint distributions but for non-correlation we don't. So we'd rather work with white noise in [[Forecasting]]. 
