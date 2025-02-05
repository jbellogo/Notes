

# Risk-free rate
Risk free interest rate $r$ is the rate an investor can expect to earn on an investment that carries 0 risk. 

The 10-year US Treasury bond yield is often used as the risk-free rate for valuing securities and markets. As of February 3, 2025, the 10-year Treasury rate was ==4.54%==. This is the unofficial standard for risk free rate because the 'risk' of the US government defaulting on these bonds is very low. 

Rates: Having money costs money. Moving it costs trasaction fees, holding it in a bank means you are loaning it to the bank, not using it in the moment, and so they are payig you an interest. Even hiding it under your bed costs you the inflation rate. 


Our first, most simple equation is for the price of a risk-free bond:

$$B(\tau)-B(0) := dB(\tau) = r  B(\tau) d\tau $$
  
The solution to this  [[ODE |first order ODE]] tells us the [[time value of money]]. 

$$\frac{B(\tau)}{B(t)} = \exp\{r(\tau-t)\} $$

  
If we are given the value of a bond at a future time we can find the discounted value to today ([[NPV|present value]]). And if we are given the current value we can compute the "future" or compounded value of the bond. 

  
Depending on if we want to compound or discount, we often set either $\beta(t) = 1$ or $\beta(T) = 1$ in our replicating portfolios. 

  

## Continuously compounding interest

It doesn't make sense for us to get paid our yearly interest once a year. This would mean that for 364 days our money is not changing value, for 364 days the bank borrows it for free. In fact it doesn't make sense for interest to be compounded discreteley at all, but in practice it often is (monthly or daily). In our caluclations we will compound it continuoiusly to account for the theoretical changes in the value of money over any and all fractions of time: I put my money in savings for 5.34343 hrs I should be paid accordingly... in theory.

  
In practice, the interest rate is not constant and changes over time! people refinance their loans?

  

You can \textbf{estimate an interest rate curve based on different bond prices, and enter those as "deterministic" quantities into the model}

  

Alternativeley, you can model the interest rate iteself as a random variable... but this does complicate the models (examples later). 


