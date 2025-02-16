
Tradeoff between model fit and model predictive power. 


\textbf{Interpretation vs. prediction tradeoff}:

Complex models like trees and neural netoworks are powerful at predicting but there is little interpretability to what the model coefficients actually mean.

  

You can restrict the class of models to allow for easy interpretation, ie trees with tunned hyperparameters. THEN optimize for prediction wihtin this class models.

\subsection{Loss}

MSE

  

\subsection{Bias-Variance Tradeoff}

MSE loss can be decomposed into three sources of error: \textbf{Bias, Variance, and Irreducible error}

\[ E [ (y_0 - \hat f(x_0))^2]

= Var(\hat f(x_0))) + [Bias(\hat f(x_0)))]^2 + Var(\epsilon)

\]

All three are non-negarive.

\begin{itemize}

\item Variance: How well the model generalizes to other data sets.

\item Bias: how well the model fits the training set.

\end{itemize}

  

Overfitting: low bias high variance. Perfect fit from highly flexible model, usually with many hyperparameters, means that the model will have high variance and not predict other test sets as well as it predicts that one.

  

Explain the tradeoff:

- Conflict of trying to simulataneously minimize the two sources of error that prevent supervised learning algorithms from generalizing beyond the training set.

  

MSE is the sum of three things, the graph of MSE makes a U, and the graphs of its three components are

\begin{itemize}

\item Irreducible error/Var(epsilon). Constant

\item Variance. Increasing with flexibility. The more flexibility, the worse predictive power to data sets outside the training set the model will have.

\item Bias. Decaying as flexibility increases. Higher flexibility $\implies$ lower bias $\implies$ better fit.

\end{itemize}

  


Regular OLS regression seeks to minimize bias: best fit for \textbf{the OBSERVED data}. The problem with this is that NEW observations (think of it as a new test set) will have large variance because the model coefficients were chosen to FIT a specific set of data. In regularized regression we add a bit of bias to our model computer from a test set. This means that although the model will not be the "best-fit" for the test set data used in the coefficient computations, our model will have lower variance when new observations are observed! ie BETTER PREDICTIVE POWER. 

* Bias: Measures fit. 
* Variance: Measures predictive power. 


