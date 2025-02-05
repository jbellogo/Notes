
  

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

  