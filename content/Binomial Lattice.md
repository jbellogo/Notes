[[Options#Option pricing| An option-pricing algorithm]] 

Consider the $N-$period binomial model with $0<d<e^{r\Delta t} < u$. Suppose the derivative payout at maturity $V_N$ is a random variable with known distribution. 

Idea: Starting from the leaves (known $V_N$), we will recursiveley go down levels $n= N-1, \dots, 0$ computing discounted expected values. 

# Algorithm \#1 

If we wish to price **path-dependent** options, we must keep track of all possible path evolutions in our lattice up the time we are interested in $n$:$(\omega_1, \dots, \omega_n)$ 
$$ V_n(\omega_1, \dots, \omega_n) = e^{-r\Delta T}\mathbb{E}^{\mathbb{Q}}(V_{n+1}|\mathcal{F}_n) $$

## Initialization
1. Given $S_0, d, u, p^u$ we will compute the lattice evolution up to time $N$ where:
$$ S_{t}^j = S_0u^jd^{t-j}$$ 
for all $t=1,2,\dots, N$, $j=0,\dots, t$. Note that $S_t^j$ stands for "stock price at time $t$ with state $j-$ups from t=0." This is because the number of ups, uniquely characterize a point in our lattice. 



2. Compute all possible payouts at maturity. $V_T(\omega_1, \dots\omega_n)$ for $\omega_1, \dots\omega_n \in \Omega=\{up, down\}$

3. For $n=N-1, \dots, 0$ do: for all $2^n$ states $W = \omega_1, \dots \omega_n$ compute:

$$ V_n(W)= e^{-r \Delta t}(q^uV_{n+1} (W, up)+ q^d V_{n+1}(W, down)) $$

4. Return $V_0$

This has a complexity of $2^T$ when implemented in a naive way because it goes through all possible $2^T$ evolution. Depending on the option this can be improved. 

# Algorithm \#2: 
To price **path-independent** option, we can simplify Algorithm 1 and just count the number of ups. This uses the fact that $V_t^j$ is the same in the binomial lattice no matter independent of the path and only dependent on the number of ups, ie. trajectories  $(up, down, up), (down, up, up)$ and $(up,up,down)$ have the same stock value $V_3^2$.

To find the price of a path-independent option

1. Compute the payouts at maturity (the leaves of the lattice). $V_T^j$
```{r, tidy=TRUE, eval=FALSE, highlight=FALSE }
for (j in 1:T) {
  V[T][j] = max((S[T][j]), 0)## for European call for instance
}
```

2. Compute $V[t][j]$ backwards in time until you get to $V[0][0]$:
```{}
# d, u are down and up steps
algo21 <- function(u,d,r, V, T){
  q_u = (e^r-d)/(u-d) # risk-free probability of up
  q_d = 1-q_u
  for (t in T-1:0){
    for (j in 0:t){
      V[t][j] = (e^(-r)*(q_u* V[t+1][j+1] + q_d*V[t+1][j])
    }
  }
  return V[0][0]
}
```


## American Option pricing
In American options we can exercise at any time up until maturity. 
We must keep track of two values at time $t$: 

3. $V_t^{ex}$: The current exercise value, payout at time $t$. 
4. $V_t^{cont}$: The continuation value, the value of the option if not exercised at time t (present value of what it is expected to give us). 

Assuming rational agents, at any time $t$ in an American option, we exercise if $V_t^{ex} > V_t^{cont}$ and hold otherwise. 

We can adapt **Algorithm #1 to price this:

### Algorithm 2.3:
5. Compute all possible payouts at maturity $V_T(\vec w)$ corresponsing to all possible states $\vec w = (\omega_0, \dots, \omega_T) \in \Omega=\{up, down\}$ 
6. Go backwards in time. For $n= N-1, \dots, 0$ do: 
  * for all states $\vec w$ do:
      a. Compute the continuation value $V_n^{cont} (\vec w)= e^{-r \Delta t} (q^u V_{n+1}(\vec w, up) + q^dV_{n+1}(\vec w, down))$
      b. Compute the execution value $V_n^{ex} (\vec w) = max\{S_n(\vec w)-K, 0 \}$
      c. Compute the rational value $V_n(\vec w) = max\{ V_n^{ex} (\vec w), V_n^{cont} (\vec w)\}$
      
7. Return $V_0$

Just like with Algorithm 2.2, if we have a path-independent option we can simplify this algorithm by expressing values in terms of number of up states $V_t^j$ as opposed to expressing them in terms of entire state evolutions $V_t(\vec \omega)$

