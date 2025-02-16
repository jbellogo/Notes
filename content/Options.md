---
aliases:
  - options
---

> [!quote] 
>>*"I can calculate the motions of celestial bodies, but not ==the madness of people.=="* \
>> — Isaac Newton, after losing 1/3 of his money in stocks.

Resources:
* [Veritasium](https://www.youtube.com/watch?v=A5w-dEgIU1M&list=PLkahZjV5wKe-Z1RP3ZiYwe8JSAolmqF9M&ab_channel=Veritasium)

An **option** is a financial derivative consisting of a contract stipulated today ($t=0$) that gives the buyer the right to buy or sell an underlying security, often a stock, within a specified period up to maturity $t=T$ and at a specified *strike price*, $K$, independent of the asset value at that time $S_T$. 

In math terms, it's a bet contract, where you bet on where a scalar function of the stock over the time horizon $f : S_{[0,T]} \rightarrow \mathbb{R}$ lies in relation to the strike price. A [[#Call]] options bets on $f(S_t)>K$  and a [[#Put]]  on the opposite  $f(S_t)>K$.


> [!fact] History
> The first recorded options trade involved olives and the Greek philosopher Thales in the 6th century BC. Thales paid a deposit and secured the right to use olive presses at a fixed price, but he didn't have an obligation to use them. He profited from the trade when the olive harvest was bountiful.


# Terminology
* Underlying [[Securities| Security]]: A house, stock, etc. 
* [[Derivatives]]: An option is a derivative of a stock because it is a "bet" on the stock, it has "derived" value from the stock.
* Strike-price $K$ the agreed-upon price for the underlying if the option is exercised. Stipulated in the option contract at $t=0$. 

> [!question]
  > If you are the issuer (short position) of an option how do you set a a strike price on the option contract? through cross validation?


# Positions
An option is a bet on a binary outcome, the [[Securities#Short|short]] and [[Securities#Long|long]] positions are the two sides to the bet.

In theory, short and long positions mirror each other: one party’s gain is the other’s loss. In practice, however, hidden fees exist.

# Leverage

*Win big loose big*


Trading options is considered risky, we see how the payouts are all or nothing. trading options is considered  riskier than trading the stock. 

This is the **leverage effect**: The relative loss in the option can be much more than the relative loss in the asset. Because of the all or nothing payout in options, you loose 100\% of what you paid to get into the bet $C_0 = V_0$.

Options have natural leverage over the underlying. With one dollar worth of stocks you can influcnece the price of the stock by one dollar, but with one dollar worth of options might be able to influence the price by much more. 


# Types
## Call
right to buy at strike price (profit from stock increase over strike-price)

## Put
right to sell at strike price (profit from stock decrease under strike-price)

If you expect a stock to decline but want to avoid the unlimited risk of shorting, you can buy a put option. This gives you the right (but not the obligation) to sell at the strike price KKK if the stock price at maturity STS_TST​ is lower. You would buy the stock at STS_TST​ and sell it for KKK, profiting from the difference.

Your maximum loss is limited to the option premium C0C_0C0​, which is typically less than the stock price.

Unlike shorting, you don’t borrow and sell shares in advance. Instead, we asume you purchase the stock at the market price at maturity and, if profitable ($K > S_T$), exercise the put to sell it right away at the stipulated $K$

# Payout

The payout of an option will be a functions over the path of the underlying over the time horizon, ie: 
$$Payout = f(S_{[0:T]}, \text{Option Type})$$ 

Where S_{[0:T]} denotes the stochastic path of the stock 
If we assume $S$ is a [[Stochastic Processes#Discrete |discrete stochastic process]]:

$$S_{[0:T]} = (S_0, S_1, S_2, \dots S_T)$$

## European 

Right to exercise the contract option at maturity T, for strike price. 
Path independent option. It doesn't matter how volatile the underlying is in the time before maturity. 


### European Call Option 

$$Payout = C_T = \text{max}\{0, S_T-K \}$$

**Example** 

If I am confident the stock price will increase over one year from current price $S_0$ above the threshold $K$. I can enter the following bet: 

*  At time $t=0$ (today) I pay the \textbf{price of the option} $C_0 \geq 0$ to enter the bet. 

*  At maturity $t=T$, I have the **right but not the obligation** to buy the stock for $K$.

	* If  $S_T > K$, I would choose to exercise this option, that way I can buy the option for less that what it is worth at the time ($K$) and then sell it for $S_t$. Payout is $S_T-K$, profit is $S_T- K - C_0$.
	* If $S_T < K$, then it doesn't make sense for me to exercise the option. So my payout is $0$ and profit is $-C_0$ i.e. $100\%$ of my principal, [[#Leverage Effect| a big loss]].

The payout is:

$$C_T = \max{ \{ S_T - K, 0 \}}$$

This is in turn a [[Random Variable| random variable]], which is a function of $S_t$. 


## American
Any-time between now and maturity pay.
Path dependent option.

## Asian
Average stock price of the evolution up-until maturity. 
  

# Pricing 

Following [[Charachters#Louis Bachelier|Bechelier's]] idea, the fair price of an option should be what makes the expected return for buyers and sellers equal. Both parties should stand to gain or loose, the same amount. 

Now the central questions is:  What is a fair price for $C_0$ i.e. the price of the option contract?

We may also be interested in the evolution of the price of the derivative overtime, the fair price for $C_t , t \in [0, T)$. Maybe we want to sell it? or just calculate payouts. 
  
Under the [[Black-Scholes]] model there is a closed form $C_0$ and $C_t$. 

We essentially want to predict the evolution of the stock price. There is not much use in predicting the probabilities of exact paths, but maybe we can predict trends and regions in which our stock may land at maturity. 

### Stock price factors
There are many factors affecting the stock price, some predictable like inflation, company performance, and some confounding ones that no one could predict like corporate scandals, wars, natural disasters. 

To protect our bet against such things we may look to bet on path-dependant options like the Asian or American Option.



## Portfolios 
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



### Risk free-asset

[[Interest]]

We assume our cash-accounts continuously compound at risk free rate $r \geq 0$.

Definition makes sense, in practice, how do we get the risk free rate? We read whatever the "US treasury" rate says. Well you need this r for your caclualtions, it doesn't matter much what it is since you want to get results independent of its realized constant value. 

  
###  Risky Asset

If we want to price an option whose value depends only on $S_T$ (european options for instance), we need a model for the random variable $S_T$. 

If we want to price a path-dependent option, we need a model for the stochastic process $(S_t)_{t\in[0,T]}$ (continuous time) or $(S_T)_{0, t_1, 

\dots, t_N = T}$ (discrete time). Recall that in the real world we can only deal with discrete time both to physically price and trade the assets and to sample from a computer simulation.

  
## Binomial Lattice 


The [[Financial markets#Arbitrage-free assumption| arbitrage-free market assumption]] for the binomial model is: 

$$ 0 < d< 1+r< u $$

This relates the randomized/stochastic performance of the bond ($d$ and $u$) to that of a good ol' predictable risk free bond (savings account) with risk free rate $1+r$. 

*You can prove this using a portfolio to construct an arbitrage*

Assume we have $1 \leq 1+r < d < u$ instead. Then we can construct an arbitrage strategy by noting that the stock will always outperform the bond independently of weather it goes down or up. This means we can borrow money from the bank and buy stock which is guaranteed to grow more than our debt to the bank... hence arbitrage. There is no options here, we are just buying entire shares. This is in fact a self-financing situation $\pi_0 = 0$ since we don't have to put down a dime in theory. 
  


## Replicating Portfolio

We can value options by finding a replicating portfolio. Using the following proposition

Suppose a market is arbitrage free. Suppose we have a portfolio of the stock and bond which satisfies $\pi_T = V_T$ at maturity time $T$ almost surely. i.e. the portfolio is replicating the random option payout at time $T$, then

$$ V_0 = \pi_0 $$

Which means we can price the option using the portfolio.

***Proof:***
If $\pi_T = V_T$ but $\pi_0 > V_0$ or $\pi_0 < V_0$ we can construct an arbitrage, which is a contradiction to the market being arbitrage free. 



## Discounted expected payout 
Another approach is by computing the discounted expected payout under a special probability measure $\mathbb{Q}$ which we call \textbf{risk neutral} or \textbf{arbitrage free pricing measure}.  

The idea with the latter is to find a [[Measure Theory| probability measure]] $\mathbb{Q}$ such that:

$$\mathbb{E}^{\mathbb{Q}}(S_t) = e^{rT}S_0 $$


That is, today's price of the stock is equal to the discounted expected value of the stock price at time $T$ given by $S_T$.


Recall that the price of an option \textit{does not depend} on the real world measure $\mathbb{P}$. the probability measure $\mathbb{Q}$ is what the market prices imply the price should be so that no arbitrage is possible. It is not the true probability measure. 


# Put-Call parity

If the equation does not hold there may be an arbitrage opportunity. To derive, simply use $C_T - P_T =  S_T -K$ and then bring to time $t$ by discounting the risk free asset $K$. 

$C_t - P_t = S_t + \exp(-rT)K$
