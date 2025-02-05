# European type 
Right to buy stock at maturity T, for strike price. 
Path independent options. It doesn't matter how volatile the underlying is in the time before maturity. 



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


