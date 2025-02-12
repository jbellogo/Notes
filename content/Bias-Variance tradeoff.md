
Tradeoff between model fit and model predictive power. 


Regular OLS regression seeks to minimize bias: best fit for \textbf{the OBSERVED data}. The problem with this is that NEW observations (think of it as a new test set) will have large variance because the model coefficients were chosen to FIT a specific set of data. In regularized regression we add a bit of bias to our model computer from a test set. This means that although the model will not be the "best-fit" for the test set data used in the coefficient computations, our model will have lower variance when new observations are observed! ie BETTER PREDICTIVE POWER. 

\begin{enumerate}

\item Bias: Measures fit. 

\item Variance: Measures predictive power. 

\end{enumerate}