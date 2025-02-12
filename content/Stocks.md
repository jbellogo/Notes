
A share in ownership of a company's equity. 


Can represent their prices as a [[stochastic process]] indexed by time $S_t$.


#  Position

An option is a bet on a binary outcome, the short and long positions are the two sides to the bet.

In theory, short and long positions mirror each other: one party’s gain is the other’s loss. In practice, however, hidden fees exist.
## Long  

held by the holder (=buyer) of an option.

*If you are long on a stock, you have an optimistic view on the underlying* 

$$\text{PAYOUT}_t = S_0 - S_t$$

You believe the stock will appreciate in value, optimistic about it, so you want to own it to sell later, or have the right to buy at a later date for a strike price you believe will be under the price at that time.

Lending (depositing) money to the bank BUYING a bond form the bank (Long)

##  Short
The writer (seller) of an option holds the short position.

Payout:
$$PAYOUT = S_0 - S_T$$

When a rational agent shorts a stock, he hopes to sell high first and then buy low, ie $S_T < S_0$. 
- If the stock drops to zero, your profit is 100% of the selling price​. 
- However, if the stock rises indefinitely, your potential loss is unbounded.
### Technicalities
Shorting a stock requires upfront capital—you can’t simply promise to return it later and take the money out of thin air.

1. You borrow the shares of a stock today from someone who owns it, a financial intermediary/broker lets you do this without even notifying the true owner. 
2. You sell the stock at todays price: $+S_0$
3. At maturity, you must buy the stock to repay it to the owner at current price: $-S_T$. 



# Normal distribution

Lets say a stock price is $P_n$. Does it make sense to model/assume the unit increments are normal? ie. $P_n-P_{n-1} \sim N(0,1)$?  Well fixed increases represent a larger percentage increase for smaller values than for large values. To exemplify: if my stock goes from 1 to 2 it increased by 100\%, but if it goes from 400 to 401 then it barely increased. So this is saying that at smaller stock values there is more aggressive changes than for bigger ones. We don't want this for modelling stock prices. The changes should be relative to the current price. Maybe it's human nature that when we are buying a house in the 8 digits we care less about the latter digits, but when we are buying candy we care about single dollar increases because it means large relative increases. Also this distribution is kinda bounded by the sideways parabola $y^2=x$ because intuitiveley we keep adding small steps around zero/ sampled from the standard normal to the stock price even as it grows larger. 


Also this assumption would make things simpler:

$P_n-P_{n-1} \sim N(0,1)  \rightarrow P_n \sim N(0, \sqrt{n})$

  
Instead we want the relative unit increases to be normally distributed, ie:

$\frac{P_n-P_{n-1}}{P_n} \sim N(0,1)$

  

And the million dollar question: If it is the case that the relative stock price unit increments follow a standard normal distribution, what is the distribution of the stock price $P_n$?



\subsection{Log-Normal distribution}




