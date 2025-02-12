# Arbitrage-free assumption


Arbitrage: Informally, A way to make a guaranteed profit from nothing. For instance, by short-selling certain assets at time 0, using the proceeds to buy other assets, and then settling accounts at time t=1

We assume the financial market model is arbitrage-free, which means there is "no free lunch." If there is an arbitrage opportunity, I can make free money by, for instance, buying apples for cheaper in one market and sell them more expensive in another market. 

Formally, an arbitrage stragy is one in which one of the two holds:

* We start with $\pi_0 = 0$ and always have a gain, i,e,, $\pi_T > 0$ [[Convergence of Random Variables|almost surely]]. 
* We start with debt and always repay it. ie $\pi_0 < 0$ and $\pi_T \geq 0$ [[Convergence of Random Variables|almost surely]].
