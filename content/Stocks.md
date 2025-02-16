A share in ownership of a company's equity. 

Can represent their prices as a [[stochastic process]] indexed by time $S_t$.

# Normal distribution

> A stock price can be thought of as a game of tug of war between buyers and sellers. If there are more buyers, the price goes up. If there are more sellers, the price goes down. they reflect majority of human behavior. But anything can affect these prices including, news, weather, performance, etc. So [Bechelier] said lets assume the stocks price is a [[Martingales|martingale]] or a [[random walk]]: equal probability going up or down from current price. 
> --- Veritasium (paraphrase)



Lets say a stock price is $P_n$. Does it make sense to model/assume the unit increments are normal? ie. $P_n-P_{n-1} \sim N(0,1)$?  Well fixed increases represent a larger percentage increase for smaller values than for large values. To exemplify: if my stock goes from 1 to 2 it increased by 100\%, but if it goes from 400 to 401 then it barely increased. So this is saying that at smaller stock values there is more aggressive changes than for bigger ones. We don't want this for modelling stock prices. The changes should be relative to the current price. Maybe it's human nature that when we are buying a house in the 8 digits we care less about the latter digits, but when we are buying candy we care about single dollar increases because it means large relative increases. Also this distribution is kinda bounded by the sideways parabola $y^2=x$ because intuitiveley we keep adding small steps around zero/ sampled from the standard normal to the stock price even as it grows larger. 


Also this assumption would make things simpler:

$P_n-P_{n-1} \sim N(0,1)  \rightarrow P_n \sim N(0, \sqrt{n})$

  
Instead we want the relative unit increases to be normally distributed, ie:

$\frac{P_n-P_{n-1}}{P_n} \sim N(0,1)$

  

And the million dollar question: If it is the case that the relative stock price unit increments follow a standard normal distribution, what is the distribution of the stock price $P_n$?



# Log-Normal distribution




