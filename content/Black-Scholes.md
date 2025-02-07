
Assume the stock price $S_t$ is an [[Ito-process]],  satisfying Geometric Brownian Motion dynamics. 

$$dS_t = \mu S_t dt+ \sigma S_t dB_t$$

Using Ito's lemma, the natural logarithm of $S_t$  satisfies Arithmetic Brownian motion dynamics: 

$$ dln(S_t) = (\mu -\frac{\sigma^2}{2})dt+ \sigma dB_t $$

We can solve this without Ito Integrals because the coefficients of the infinitesimals are constant. The **solution** is:
$$S_t = S_0 \exp\{(\mu -\frac{\sigma^2}{2})t+ \sigma B_t\}$$

# Implementation


When implementing this for option pricing, recall the discounted risk-neutral payout expectation formula, where the option payout at time $t$ is a function of the realized path of the stock process up to time $t$:

$$V_0 = e^{-rT} \mathbb{E}^{\mathbb{Q}}(\text{payout}((S_t)_{t\in [0,T]})) $$


We can use this closed form solution along with the discounted risk-neutral to construct a [[Monte Carlo| MC Algorithm]]

Also under $\mathbb{Q}$, $\mu = r$ in our GBM solution (**Not sure how to prove this**), so we can say: 
$$ S_t = S_0 \exp\{(r -\frac{\sigma^2}{2})t+ \sigma B_t\}$$

# Black Scholes MC Algorithm
Given $n$: number of simulation runs, $N:$ number of time discretizations suth that for a maturity time horizon $T$, $T/N = \Delta t$. 

1. Discretize time s.t. we only simulate at $0 < t_1 < t_2 < \dots < t_N$
2. For $i = 1, \dots n$ (number of simulation runs):
    * Sample a discretized path $S_1, \dots S_N$ corresponding to $t_1, \dots t_N$.
    * Compute the payout in simulation run $i$, say $V_N^j$. Unlike with binomial models we don't need to know $V_t$ for $t<N$. 
3. Return the estimate $\hat V_0 = e^{-rT}\frac{1}{n}V^i_N$ (the discounted expected value of the average payout at maturity.)

This can be used for path-dependent (Asian) or independent options (European, rainbow?) but, as the algorithm is, the options should be exercised at maturity i.e. no american-type options (you probably just modify it a bit like with algo 2.3)

### Sources of error for Monte Carlo: 
* Discretization error as we sample only at $t_1 < t_2 < \dots < t_N$ and not continuosuly (impossible on a finite resource computer)
* Sampling error or MC error, due to only sampling $n$ paths. We can't ever sample all uncountably many paths. 

