
# Introduction to financial markets

  

\textbf{Question} If you are the issuer (short position) of an option how do you set a a strike price on the contract for short/put?

  

\textbf{Question} Is the number of shares I can buy/sell for the strike price also stipulated on the contract?

  

\begin{definition}

\textbf{Risk-free interest rate} is the rate an investor can expect to earn on an investment that carries 0 risk. Why would lending money to the bank carry risk? because of the time value of money (TVM). Compensates investors for the time-value of money: Their money is tied up and so they can't put it to use and inflation rises.

\end{definition}

  

\begin{definition}

\textbf{Time Value of Money}

A sum of money is worth more now than the same sum will be worth in the future. Main reasons are \textbf{inflation}, and due to its earnings potential in the interim.

\end{definition}

  

\begin{definition}

In a company: \textit{Equity = Assets - Liabilities}. 

\begin{itemize}

\item \textbf{Assets}: Everything you own which has value: infrastructure, patents, bonds, stocs, commodities. They have a random value over time $S_t$. 

\item \textbf{Liabilities}: Future debt 

\item \textbf{Owner's Equity}: What the owners would get if they sold the company. 

\end{itemize}

\end{definition}

  

\begin{definition}

\textbf{Stock}: A share in ownership of a company's equity. 

\begin{itemize}

\item Dividend: payment to shareholders from profits. Some stocks don't have dividends. 

\end{itemize}

\end{definition}

  

\begin{definition}

\textbf{Security:} A tradable financial asset. A house, stock, etc. 

\end{definition}

  

\begin{definition}

\textbf{Derivative:} A "secondary" security. A contract that derives its value and risk from  particular security. On option is a derivative of a stock because it is a "bet" on the stock, it has "derived" value from the stock.

\end{definition}

  

\begin{definition}

\textbf{Market risk} risk of loss due to uncertainty in the financial markets. A big question is how can market risk be modelled, measured and analyzed? How can risk be reduced?

\end{definition}

  

  

\begin{definition}

\textbf{Option}: A financial derivative/contract stipulated today ($t=0$) that gives the buyer the right to buy or sell the underlying asset within a specified period up to maturity $t=T$ and at a specified strikeprice independent of the asset value $S_t$. Just like with any bet, you can bet on both all outcomes:

\begin{itemize}

\item Long position: held by the holder (=buyer) of an option

\item short position: held by the writer (=seller) of an option. There is usually an upfront capital you have to put down for the shorting of a stock, you don't just sign you'll give it back in the future and take the money out of thin air. 

\item In theory, the short and long position profits will always mirror each other since they are the only ones involved in the bet. There are hidden fees in practice.

\end{itemize}

\end{definition}

  

We use the following language when talking about an option: 

  

\begin{itemize}

\item Call: right to buy at strike price (profit from stock increase over strike-price)

\item Put: right to sell at strike price (profit from stock decrease under strike-price)

\item European type: At maturity T.

\item American type: Any-time between now and maturity pay.

\item Asian type: Average stock price evolution up-until maturity ***.

\item Strike-price K: specified at $t=0$. 

\end{itemize}

  

  

\subsubsection{European Call option}

I am confident the stock price will increase over one year from current price $S_0$ above the threshold $K$. I can enter the following \textbf{bet}: 

\begin{itemize}

\item At time $t=0$ (today) I pay the \textbf{price of the option} $C_0 \geq 0$ to enter the bet. 

\item At \textbf{maturity}, say $T=1$. I have the \textit{right but not the obligation} to buy the stock for the \textbf{strike price}. 

\item If at maturity $S_T > K$, I would choose to exercise this option, that way I can buy the option for less that what it is worth at the time ($K$) and then sell it for $S_t$. Payout is $S_T-K$, profit is $S_T- K - C_0$.

\item If at maturity $S_T < K$, then it doesn't make sense for me to exercise the option. So my payout is $0$ and profit is $-C_0$ i.e. $100\%$ of my principal.

\item $S_t$ is a random variable, we do not know the evolution of the stock price $S_t$ otherwise we'd be rich. 

\end{itemize}

  

The payout for the long position (owner of the option) at some future one period time is: 

\[ C_T = max\{S_t - K, 0\} \]

  

This is a random variable which is a function of $S_t$. 

  

Now the central questions is: 

  

\begin{center}

What is a fair price for $C_0$ i.e. the price of the contract?

\end{center}

  

We may also be interested in the evolution of the price of this derivative $C_t$ overtime. Maybe we want to sell it? or just calculate payouts. 

  

\begin{center}

What is a fair price for $C_t , t \in [0, T)$?

\end{center}

  

Under the Black-Scholes model there is a closed form $C_0$ and $C_t$. 

  

\subsection{Options}

\textbf{We will focus on derivative markets in CS 476.}

  

All options carry their associated risk. 

  

Consider an \textbf{European Option}. We make money if we are right about our prediction ($S_T > K$ for the call, $S_T < K$ for the put) exactly at time $T$.

  

Predicting points is much harder and unreliable than predicting trends, especially if the stock price is relatively volatile (really big up and downs to relative to stock price). Say we have a call option and the stock price of BMW is increasing consistently for one year but then at maturity the owner of company decides to go hunt an endangered tiger which causes the $S_T$ to plummet bellow $K$.

  

To protect against such things we may look to bet on path-dependant options like the Asian or American Option. This way we bet on trends and not on points.  \textbf{We expect these to be less risky?}

  

\subsubsection{Shorting Stock}

When you "short" a stock, there is no derivatives involved. You borrow the \textit{shares} from the broker and sell them at time 0. You are counting on the stock price dropping to make a profit. If the stock has indeed dropped bellow the price you paid and you decide it's reached a minimum, you buy it at the current price and give back the shares you borrowed and sold from the broker. Theoretically, if the stock drops to zero your profit is 100\% of what you sold it for $S_0$ as you can pay nothing to buy it back and repay it to the broker. On the other hand, if the stock keeps rising above the strike price, your debt is unbounded.

  

\subsubsection{Put option}

Say you believe the stock is going to go down but you don't have the stomach to short it (cuz you can loose an unbounded amount of money) you can buy a put option. Then you have the right to sell high for the strikeprice if the price at maturity is lower. you buy from the market for $S_T$ and sell for $K$. You also don't have the obligation to sell, so you don't have to buy it. Your loss is bounded by 100\%  of $C_0$ if you choose not to exercise the option, which is most likely less than the stock price. 

  

Unlike with shorting, you don't borrow and sell the stock in advanced. 

  

\subsection{Example}

  

Let's say a stock starts at $50$ and then it can go to $80$ or $20$. We have respective put and call options which we can buy for $5$ at strike prices of 60\$ for the call and 40\$ for the put. 

  

\begin{center}

Profit

\begin{tabular}{||c c c c c||} 

 \hline

 Security & Upfront Capital & Call & Short & Put\\ [0.5ex] 

 \hline

 \hline

 80 & 30 & 15 & -30  & \$5 \\ 

 \hline

 20 & -30 & -5 & 30 & \$15 \\

 \hline

\end{tabular}

\end{center}

  

\begin{center}

\% gain and loss

\begin{tabular}{||c c c c||} 

 \hline

 Security & Upfront Capital & \% Gain & \% Loss \\ [0.5ex] 

 \hline

 \hline

 Stock & 50 & 60\% & 60\% \\ 

 \hline

 Call & 5 & 300\% & 100\% \\

 \hline

\end{tabular}

\end{center}

  

From this table we see that the call option gives us \textit{leverage}. Putting leverage on your bet = "multiplying your potential gains or losses"

  

  

\section{Probability Theory}

Random variable is a function from sample space to real line. 

  

A discrete RV is characterized by its probability \textbf{mass} function. A \textbf{pmf} $f_X$ is such that:

\[f_X : \Omega \rightarrow \mathbb{R_{\geq 0}} \]

\[\sum_{x \in \Omega} f_X(x)=1 \]

  

  

A continuous RV is characterized by its probability \textbf{distribution} function. A \textbf{pdf} $f_Y$ is such that:

\[f_Y : \Omega=\mathbb{R} \rightarrow \mathbb{R_{\geq 0}} \]

\[\int_{\Omega} f_Y(y) dy =1 \]

The sample space for cts rv's is often the reals. 

  

\subsection{Independence}

For a sequence of RV's $X_1, X_2, \dots X_n$there are two principal notions of independence: 

\begin{itemize}

\item Mutual independence: independence property satisfied for all subsets of ${X_i}_{1<i<n}$.** \textbf{This is the one we are interested in.}

\item Pairwise independence: independence property satisfied only for pairs.

\end{itemize}

  

\subsection{Normal distribution}

Lets say a stock price is $P_n$. Does it make sense to model/assume the unit increments are normal? ie. $P_n-P_{n-1} \sim N(0,1)$?  Well fixed increases represent a larger percentage increase for smaller values than for large values. To exemplify: if my stock goes from 1 to 2 it increased by 100\%, but if it goes from 400 to 401 then it barely increased. So this is saying that at smaller stock values there is more aggressive changes than for bigger ones. We don't want this for modelling stock prices. The changes should be relative to the current price. Maybe it's human nature that when we are buying a house in the 8 digits we care less about the latter digits, but when we are buying candy we care about single dollar increases because it means large relative increases. Also this distribution is kinda bounded by the sideways parabola $y^2=x$ because intuitiveley we keep adding small steps around zero/ sampled from the standard normal to the stock price even as it grows larger. 

  

Also this assumption would make things simpler:

\[ P_n-P_{n-1} \sim N(0,1)  \rightarrow P_n \sim N(0, \sqrt{n})\]

  

Instead we want the relative unit increases to be normally distributed, ie:

\[ \frac{P_n-P_{n-1}}{P_n} \sim N(0,1)\]

  

And the million dollar question: If it is the case that the relative stock price unit increments follow a standard normal distribution, what is the distribution of the stock price $P_n$?

  

\subsection{Log-Normal distribution}

  

\subsection{Exponential family of distributions}

Basically things with an exp... kind of. They have some nice statistical properties.

  

  

\subsection{Moment Generating Functions}

For a random variable we want to study two things: 

  

\begin{itemize}

\item  study \textit{statistics} which are derived from its moments. We want to study the k-th moment $E[X^k]$ and to do so we use the MGF which encodes all the moments of X. It encodes ALL statistical information about the random variable. 

\item study \textit{long-term}/large-scale behaviour. We don't have control over each of the random variables individually BUT we kno that the more we have they will approximate a normal distribution by the CLT. What can we say, what kinds of events can happen with high probability. 

\end{itemize}

  

Remarks about M.G.F:

\begin{itemize}

\item MGF does not necessarily exist. 

\item Log-normal distribution does not have a m.g.f.

\item The kth derivative of the M.G.F is the k-th moment of the RV

\end{itemize}

  

\begin{theorem}

If $X, Y$ have the same m.g.f then they have the same distributions. This says that if the m.g.f exists it encodes everything about your random variable. The ultimate tool. All the secrets of $X$.

\end{theorem}

  

Remark: This does not imply that all random vars with equal k-th moments have the same distribution. Maybe the mgf does not exist for one random var. 

  

\subsection{Weak Law of Large Numbers}

  

For a sequence of iid random variables, as the size of the sequence grows, its sample mean gets closer to the independent mean. 

  

What does this imply? a small advantage will become apparent for sufficiently large amount of trials. At the casino maybe they have a 51\% change of winning against any one individual player playing an optimum strategy. It doesn't look like a good business but really this tiny edge makes them money in the long run over several customers. It's like your metaphor with slopes: the steeper one will always catch up ... eventually. 

  

Now the casino may loose money in the short term, you may loose against someone not as skilled once or twice... and as humans this affects us, but if we are right about our beliefs, the player with the advantage will win in the long term. Keep your faith in the math. 

  

  

\subsection{Central Limit Theorem}

In WLLN we took the average over iid RV's. For the CLM these RVs need to be special: they need to have mean zero. 

  

Now we will not take the conventional average $\frac{1}{n} \sum X_i$. We will take this average $\frac{1}{\sqrt{n}} \sum X_i$. Why is this special? well the variance of this is independent of $n$. Which is interesting. 

\section{Stochastic processes}

A \textit{stochastic process} is:

\begin{itemize}

\item \textbf{Defn(1):} A sequence of random variables indexed by time (e,j. $X_0, X_1, \dots$ for discrete time)

\item \textbf{Defn(2):} A probability distribution over a space of paths. It is easier to do some math with this definition. Here, the graph of a stock evolution is just one realization of the paths random variable. Note that in practice we may not have the joint distribution for real world time series data but we can construct things like random walks from known joint normals. 

\end{itemize}

  

The goal of studying stochastic processes is to observe the past up to time $t'$ and be able to make an intelligent prediction about the process in the future. Depending on the process this can be trivial or impossible and anywhere in between. 

  

If our stochastic process is: 

\[ X_t = t \text{, with probability 1} \]

It is trivial to predict the future from the past if my stochastic process is:

  

If our stochastic process is: 

\[ 

X_t = 

\begin{cases}

t \forall t \text{, with probability 1/2} \\

-t \forall t \text{, with probability 1/2} \\

\end{cases}

\] 

Even with randomness introuduced, we can still describe the exact evolution of $X_{t \geq t'}$ in this case if we know just one realization of $X_{t<t'}$. This is because the sp is dependent. 

  

  

If our stochastic process is: 

\[ 

X_t = 

\begin{cases}

t \text{, with probability 1/2} \\

-t \text{, with probability 1/2} \\

\end{cases}

\]

Here the past can tell us nothing about the future because the sp is random and independent.

  

In the study of sp's we are interested in three types of questions:

\begin{enumerate}

\item What are the dependencies in the sequence of value? (ie. will knowing the past will help me predict the future)

\item What is the long term behaviour? Does the sequence converge to something or just bounce around. Law of large numbers and CLT. 

\item What are the boundary events? Events of interest to me, like how often does a stock drop by 10pts. 

\end{enumerate}

  

\subsection{Discrete}

\subsubsection{Simple Random Walk}

THE fundamental discrete time stochastic process.

  

Denote our "steps of the walk" as $Y_i$ \textbf{i.i.d} random variables with: 

\[ Y_i = 

\begin{cases}

1 \text{, with prob 1/2} \\

-1 \text{, with prob 1/2} \\

\end{cases}

\]

then the \textit{one-dimensional} \textbf{random walk} $X_t$ is: 

\[ X_0 = 0 \text{ and } X_t = \sum_{i=1}^t Y_i \forall t>0 \]

It is one dimensional analogous to a drunk guy walking frowards and backwards along a straight line. Diagonal Motzkin paths make for a clearer picture. 

  

How does the random walk behave as time grows?

What is the distribution at time $t$? This is CLT stuff, the variance will be $t$ and the mean will be zero. Why is the variance t? well that's the maximum height about zero that the walk can achieve at time $t$ and it is only achieved if all steps are in one direction. 

  

  

The random walk is theoretically bounded by the lines $t$ and $-t$ which correspond to all up-steps and all down steps up to time $t$. In practice however, there is a smaller "sort of bound." It's something like a confidence interval asymptote in the shape of a $y^2 = t$ parabola. You can prove that it will cross the $x-$axis and both the  upper $\sqrt{t}$ and lower $-\sqrt{t}$ sides of a parabola (so it is not an asymptote) an infinite amount of times. 

  

Properties: 

\begin{enumerate}

\item $E(X_k) = 0$

\item Independent increments: If $0=t_0 \leq t_1 \leq \dots \leq t_k$, then $X_{t_{i+1}} -X_{t_i}$ are mutually independent. Ie. any and all disjoint subintervals of the random walk are independent. 

\item Stationary: For all $h \geq 1, t \geq 0$ the distribution of $X_{t+h}-X_t$ is the same as the distribution of $X_n$.

\end{enumerate}

  

\subsubsection{Markov Chain}

Collection of stochastic process whose effect of the past on the future is summarized \textbf{only} by the current state. These ones are more managable than stuff that depends on entire evolution (like asian options?)

  

A simple random walk is a markov chain: What happens at $t'$ just depends on where you were at time $t'-1$ since you can only go up or down one step at a time. 

  

Formally: A discrete time stochastic process $X_1, X_2, \dots$ is a markov chain if: 

\[ P(X_{t+1}=s | X_0, X_1, \dots , X_t) = P(X_{t+1}=s | X_t)\] 

  

  

**** Consult CLM. 

  

  

\section{Model}

  

  

We \textit{assume}:

  

\begin{enumerate}

\item $(S_t)$ is a \textit{stochastic process} 

\begin{itemize}

\item \textbf{Defn(1):} A sequence of random variables indexed by time (e,j. $X_0, X_1, \dots$ for discrete time)

\item \textbf{Defn(2):} A probability distribution over a space of paths. It is easier to do some math with this definition. Here, the graph of a stock evolution is just one realization of the paths random variable. Note that in practice we may not have the joint distribution for real world time series data but we can construct things like random walks from known joint normals. 

\end{itemize}

  

\item $S_t$ is modelled discretely.

\begin{itemize}

\item Discrete time stochastic process: at discrete times $0 < t_1 < \dots t_N = 0$ we observe the respective stock prices $S_{t1} \dots S_{tN}$.

\item Continuous time sp: for continuous $0 < t < T$ we have $S_t$ is a function with solid lines \textbf{(does not have to be continuous itself though)}. Can't express continuity in computers because we can't express sets of  infinite cardinalities, like subsets of the real line, with finite resources. 

\end{itemize}

\item $V_t$ is the value of the option. It is a function of time $t$ and the value of the underlying stock at or up-to time $t$, so: $V_t = V(S_t,t )$.

  

\end{enumerate}

  

Our market and portfolios will often have:

\begin{enumerate}

\item one risk-free asset (bond/a bank account earning interest deterministically, or a loan compounding interest in which case we look at its PV )

\item one (modelled as stochastic process $S_t$) or several, possibly dependent, risky assets (modelled as multivariate stochastic processes $(S_t^1, S_t^2 \dots)$). Typically a stock.

\item One or more derivatives on the risky asset. ie calls,puts, and such. 

\end{enumerate}

We use the risk-free asset to borrow or lend money to finance our trading strategy since we will be looking at money over-time and its intrinsic value changes,  \textbf{so don't hide it under the bed.}

\begin{itemize}

\item Lending (depositing) money to the bank BUYING a bond form the bank (Long)

\item Borrowing is SELLING a bond to the bank. 

\end{itemize} 

  

We assume our cash account \textit{continuously} compounds at \textit{constant} risk free rate $r \geq 0$. 

  

  

Denote by $V_t = V(S_t,t )$ the value of the option at time $t$. It depends on the value of the underlying asset $S_t$ and sometimes, like in the Asian option case, it depends on the entire evolution up to time $t$. For each time $t > 0$, $S_T$ is a random variable ... and I think $S_t$ and $S_j$ don't have the same distribution, that's what makes them exciting, we don't have the joint but we can infer things

  

Tading options is considered risky, we see how the payouts are all or nothing. trading options is considered  riskier than trading the stock. 

  

This si teh leverage effect: The relative loss in the option can be much more than the relative loss in teh asset. Becuae of the all or nothing payout in options, you loose 100\% of what you paid to get into the bet $C_0 = V_0$.

  

\[ |\frac{S_t - S_0}{S_0}| << |\frac{V_s-V_0}{V_0}|\]

  

On a call/put option, when do we get the ultimate payout as the buyer of the option? when the difference $S_t-C$ is largest 

  

Let's think about american options because the maximization of european options depends entireley on $S_T$. For american options, we get to decide when we want to cash out. 

  

  

Recall our model will have one risk-free bond and a risky asset/stock

\subsection{Risk free asset}

\subsubsection{Interest rates}

We assume our cash-accounts continuously compound at risk free rate $r \geq 0$.

  

Definition makes sense, in practice, how do we get the risk free rate? We read whatever the "US treasury" rate says. Well you need this r for your caclualtions, it doesn't matter much what it is since you want to get results independent of its realized constant value. 

  

Our first, most simple equation, 

  

\[ dB(\tau) = r  B(\tau) d\tau \]

  

The solution to this ODE tells us the time value of money. 

  

\[ \frac{B(\tau)}{B(t)} = \exp\{r(\tau-t)\} \]

  

If we are given the value of a bond at a future time we can find the \textbf{discounted} value to today (present value). And if we are given the current value we can compute the "future" or compounded value of the bond. 

  

Depending on if we want to compound or discount, we often set either $\beta(t) = 1$ or $\beta(T) = 1$ in our replicating portfolios. 

  

  

\subsubsection{Continuous compounding of interest}

It doesn't make sense for us to get paid our yearly interest once a year. This would mean that for 364 days our money is not changing value, for 364 days the bank borrows it for free. In fact it doesn't make sense for interest to be compounded discreteley at all, but in practice it often is (monthly or daily). In our caluclations we will compound it continuoiusly to account for the theoretical changes in the value of money over any and all fractions of time: I put my money in savings for 5.34343 hrs I should be paid accordingly... in theory.

  

In practice, the interest rate is not constant and changes over time! people refinance their loans?

  

You can \textbf{estimate an interest rate curve based on different bond prices, and enter those as "deterministic" quantities into the model}

  

Alternativeley, you can model the interest rate iteself as a random variable... but this does complicate the models (examples later). 

  

  

\subsection{Risky Asset}

If we want to price an option whose value depends only on $S_T$ (european options for instance), we need a model for the random variable $S_T$. 

  

If we want to price a path-dependent option, we need a model for the stochastic process $(S_t)_{t\in[0,T]}$ (continuous time) or $(S_T)_{0, t_1, 

\dots, t_N = T}$ (discrete time). Recall that in the real world we can only deal with discrete time both to physically price and trade the assets and to sample from a computer simulation.

  

\subsection{Arbitrage free pricing}

Informally: A way to make a guaranteed profit from nothing. by short-selling certain assets at time 0, using the proceeds to buy other assets, and then settling accounts at time t=1

We assume the financial market model is arbitrage free, which means there is "no free lunch." If there is an arbitrage opportunity, I can make free money by, for instance, buying apples for cheaper in one market and sell them more expensive in another market. 

  

such a stragy is one in which one of the two holds:

\begin{itemize}

\item We start with $\pi_0 = 0$ and always have a gain, i,e,, $\pi_T > 0$ almost surely. 

\item We start with debt and always repay it. ie $\pi_0 < 0$ and $\pi_T \geq 0$ almost surely.

\end{itemize}

  

We assumed 

\[ 0 < d< 1+r< u \]

This is necessary for the market to be arbitrage-free. 

  

Just recall that this above inequality relates the randomized/stochastic performance of the bond ($d$ and $u$) to that of a good ol' predictable risk free bond (savings account) with risk free rate $1+r$. 

  

Assume we have $1 \leq 1+r < d < u$ instead. Then we can construct an arbitrage strategy by noting that the stock will always outperform the bond independently of weather it goes down or up. This means we can borrow money from the bank and buy stock which is guaranteed to grow more than our debt to the bank... hence arbitrage. There is no options here, we are just buying entire shares. This is in fact a self-financing situation $\pi_0 = 0$ since we don't have to put down a dime in theory. 

  

  

  

\section{One period Binomial}

  

\section{Pricing Options}

\subsection{Replicating Portfolio}

We can value options by finding a replicating portfolio. Using the following proposition:

  

\begin{theorem}

Suppose a market is arbitrage free. Suppose we have a portfolio of the stock and bond which satisfies $\pi_T = V_T$ at maturity time $T$ almost surely. i.e. the portfolio is replicating the random option payout at time $T$, then

\[ V_0 = \pi_0\]

Which means we can price the option using the portfolio.

\end{theorem}

\begin{proof}

If $\pi_T = V_T$ but $\pi_0 > V_0$ or $\pi_0 < V_0$ we can construct an arbitrage, which is a contradiction to the market being arbitrage free. 

\end{proof}

  

\subsection{Discounted expected payout}

Another approach is by computing the discounted expected payout under a special probability measure $\mathbb{Q}$ which we call \textbf{risk neutral} or \textbf{arbitrage free pricing measure}.

  

The idea with the latter is to find $\mathbb{Q}$ such that:

\[ \mathbb{E}^{\mathbb{Q}}(S_t) = e^{rT}S_0 \]

  

also 

\[S_0 = e^{-rT}\mathbb{E}^{\mathbb{Q}}\]

  

That is, today's price of the stock is equal to the discounted expected value of the stock price at time $T$ given by $S_T$.

  

  

Recall that the price of an option \textit{does not depend} on the real world measure $\mathbb{P}$. the probability measure $\mathbb{Q}$ is what the market prices imply the price should be so that no arbitrage is possible. It is not the true probability measure. 

  

  

\section{Put-Call parity}

If the equation does not hold there may be an arbitrage opportunity. To derive, simply use $C_T - P_T =  S_T -K$ and then bring to time $t$ by discounting the risk free asset $K$. 

\[C_t - P_t = S_t + \exp(-rT)K\]

    

\section{Binomial Lattice}

  

\section{Stochastic Calculus}

  
\end{document}