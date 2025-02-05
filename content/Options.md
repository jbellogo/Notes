  
An **option** is a financial derivative/contract stipulated today ($t=0$) that gives the buyer the right to buy or sell the underlying asset within a specified period up to maturity $t=T$ and at a specified strikeprice independent of the asset value $S_t$. Just like with any bet, you can bet on both all outcomes in [[Call Options]] or [[Put Options]].

# Stock
A share in ownership of a company's equity. 

# Security / Underlying
A tradable financial asset. A house, stock, etc. 

# Derivative
A "secondary" security. A contract that derives its value and risk from  particular security. An option is a derivative of a stock because it is a "bet" on the stock, it has "derived" value from the stock.

\textbf{Market risk} risk of loss due to uncertainty in the financial markets. A big question is how can market risk be modelled, measured and analyzed? How can risk be reduced?

## Long position
held by the holder (=buyer) of an option

\item Lending (depositing) money to the bank BUYING a bond form the bank (Long)


## short position
held by the writer (=seller) of an option. There is usually an upfront capital you have to put down for the shorting of a stock, you don't just sign you'll give it back in the future and take the money out of thin air. 

In theory, the short and long position profits will always mirror each other since they are the only ones involved in the bet, one has to loose what the other one wins. There are hidden fees in practice.

We use the following language when talking about an option: 

\item Borrowing is SELLING a bond to the bank. I sell them the contract, for cash today, that says I will pay them with interest at a future date.
# Call
right to buy at strike price (profit from stock increase over strike-price)

# Put
right to sell at strike price (profit from stock decrease under strike-price)

Scenario 

Say you believe the stock is going to go down but you don't have the stomach to [[Stocks#Shorting|short]] it (cuz you can loose an unbounded amount of money) you can buy a put option. Then you have the right to sell high for the strikeprice if the price at maturity is lower. you buy from the market for $S_T$ and sell for $K$. You also don't have the obligation to sell, so you don't have to buy it. Your loss is bounded by 100\%  of $C_0$ if you choose not to exercise the option, which is most likely less than the stock price. 

Unlike with [[Stocks#Shorting|shorting]] , you don't borrow and sell the stock in advanced. 


# Types
* [[European Options]]
* [[American Options]]
* [[Asian Options]]


# Strike-price K
specified in the option contract $t=0$. 
**Question:** If you are the issuer (short position) of an option how do you set a a strike price on the contract for short/put?



# Leverage Effect
Trading options is considered risky, we see how the payouts are all or nothing. trading options is considered  riskier than trading the stock. 

This si teh leverage effect: The relative loss in the option can be much more than the relative loss in teh asset. Becuae of the all or nothing payout in options, you loose 100\% of what you paid to get into the bet $C_0 = V_0$.



    
# Portfolios 
Our market and portfolios will often have:

* One risk-free asset (bond/a bank account earning interest deterministically, or a loan compounding interest in which case we look at its PV )
* One [[Risk | risky]] asset modelled as stochastic process $S_t$) or several, possibly dependent, risky assets (modelled as [[Stochastic Processes#Multivariate|multivariate stochastic processes]] $(S_t^1, S_t^2 \dots)$). Typically a stock.
* One or more derivatives on the risky asset. ie calls,puts, and such. 

We use the risk-free asset to borrow or lend money to finance our trading strategy since we will be looking at money over-time and its intrinsic value changes. 

  
We assume our cash account *continuously* compounds at constant risk free rate $r \geq 0$. 

We will use a *replicating portfolio* strategy to price derivative. 



Denote by $V_t = V(S_t,t )$ the value of the option at time $t$. It depends on the value of the underlying asset $S_t$ and sometimes, like in the Asian option case, it depends on the entire evolution up to time $t$. For each time $t > 0$, $S_T$ is a random variable ... and I think $S_t$ and $S_j$ don't have the same distribution, that's what makes them exciting, we don't have the joint but we can infer things

$$ |\frac{S_t - S_0}{S_0}| << |\frac{V_s-V_0}{V_0}|$$

On a call/put option, when do we get the ultimate payout as the buyer of the option? when the difference $S_t-C$ is largest 

Let's think about american options because the maximization of european options depends entireley on $S_T$. For american options, we get to decide when we want to cash out. 



## Risk free-asset

[[Interest]]

We assume our cash-accounts continuously compound at risk free rate $r \geq 0$.

Definition makes sense, in practice, how do we get the risk free rate? We read whatever the "US treasury" rate says. Well you need this r for your caclualtions, it doesn't matter much what it is since you want to get results independent of its realized constant value. 

  
## Risky Asset

If we want to price an option whose value depends only on $S_T$ (european options for instance), we need a model for the random variable $S_T$. 

If we want to price a path-dependent option, we need a model for the stochastic process $(S_t)_{t\in[0,T]}$ (continuous time) or $(S_T)_{0, t_1, 

\dots, t_N = T}$ (discrete time). Recall that in the real world we can only deal with discrete time both to physically price and trade the assets and to sample from a computer simulation.

  

# Arbitrage-free assumption


Arbitrage: Informally, A way to make a guaranteed profit from nothing. For instance, by short-selling certain assets at time 0, using the proceeds to buy other assets, and then settling accounts at time t=1

We assume the financial market model is arbitrage-free, which means there is "no free lunch." If there is an arbitrage opportunity, I can make free money by, for instance, buying apples for cheaper in one market and sell them more expensive in another market. 

Formally, an arbitrage stragy is one in which one of the two holds:

* We start with $\pi_0 = 0$ and always have a gain, i,e,, $\pi_T > 0$ [[Convergence of Random Variables|almost surely]]. 
* We start with debt and always repay it. ie $\pi_0 < 0$ and $\pi_T \geq 0$ [[Convergence of Random Variables|almost surely]].

The assumption: In an arbitrage free-market, 

$$ 0 < d< 1+r< u $$



This relates the randomized/stochastic performance of the bond ($d$ and $u$) to that of a good ol' predictable risk free bond (savings account) with risk free rate $1+r$. 

*You can prove this using a portfolio to construct an arbitrage*

Assume we have $1 \leq 1+r < d < u$ instead. Then we can construct an arbitrage strategy by noting that the stock will always outperform the bond independently of weather it goes down or up. This means we can borrow money from the bank and buy stock which is guaranteed to grow more than our debt to the bank... hence arbitrage. There is no options here, we are just buying entire shares. This is in fact a self-financing situation $\pi_0 = 0$ since we don't have to put down a dime in theory. 
  
  


# Option pricing 
Now the central questions is:  What is a fair price for $C_0$ i.e. the price of the contract?

We may also be interested in the evolution of the price of the derivative overtime, the fair price for $C_t , t \in [0, T)$. Maybe we want to sell it? or just calculate payouts. 
  

Under the [[Black-Scholes]] model there is a closed form $C_0$ and $C_t$. 

  

Consider an \textbf{European Option}. We make money if we are right about our prediction ($S_T > K$ for the call, $S_T < K$ for the put) exactly at time $T$.

  

Predicting points is much harder and unreliable than predicting trends, especially if the stock price is relatively volatile (really big up and downs to relative to stock price). Say we have a call option and the stock price of BMW is increasing consistently for one year but then at maturity the owner of company decides to go hunt an endangered tiger which causes the $S_T$ to plummet bellow $K$.


To protect against such things we may look to bet on path-dependant options like the Asian or American Option. This way we bet on trends and not on points.  \textbf{We expect these to be less risky?}

## Binomial Lattice 

  

## Replicating Portfolio

We can value options by finding a replicating portfolio. Using the following proposition:

  
\begin{theorem}

Suppose a market is arbitrage free. Suppose we have a portfolio of the stock and bond which satisfies $\pi_T = V_T$ at maturity time $T$ almost surely. i.e. the portfolio is replicating the random option payout at time $T$, then

\[ V_0 = \pi_0\]

Which means we can price the option using the portfolio.

***Proof:***
If $\pi_T = V_T$ but $\pi_0 > V_0$ or $\pi_0 < V_0$ we can construct an arbitrage, which is a contradiction to the market being arbitrage free. 



## Discounted expected payout 
Another approach is by computing the discounted expected payout under a special probability measure $\mathbb{Q}$ which we call \textbf{risk neutral} or \textbf{arbitrage free pricing measure}.  

The idea with the latter is to find a [[Measure Theore| probability measure]] $\mathbb{Q}$ such that:

$$\mathbb{E}^{\mathbb{Q}}(S_t) = e^{rT}S_0 $$


That is, today's price of the stock is equal to the discounted expected value of the stock price at time $T$ given by $S_T$.


Recall that the price of an option \textit{does not depend} on the real world measure $\mathbb{P}$. the probability measure $\mathbb{Q}$ is what the market prices imply the price should be so that no arbitrage is possible. It is not the true probability measure. 


# Put-Call parity

If the equation does not hold there may be an arbitrage opportunity. To derive, simply use $C_T - P_T =  S_T -K$ and then bring to time $t$ by discounting the risk free asset $K$. 

$C_t - P_t = S_t + \exp(-rT)K$
