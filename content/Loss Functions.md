Some model selection criteria for predictive power: 

* Prediction Stanrdard error. 

* $MSE_{prediction}$ criterion (cross-validation)




Measure the quality of the fit. As you imagine, there are several ways to measure "quality".

We need a measure to compare the fitted predicted values to the truth. 

  

Denote the loss function as $L(Y, f(X))$. It measures the error in estimating $Y$ with the estimate $f(X)$

  

The loss function \textbf{is a random variable}. The expected value of the loss function with respect to the \textbf{joint probability function} is called the \textbf{risk}:

\[ E_{X,Y}[L(Y, f(X))] \]

  

A couple of things here:

  

The expectation is over the joint distribution in theory, but in practice, since we are tryint to use $X$ to predict $Y$ we \textit{assume $X$ is given} so the expecation will be ralative to this distribution ie. 

  

\[ E_{Y|X}[L(Y, f(X)) | X =x] = \int_{\mathbb{R}}  P(Y|X=x) dL(Y, f(X))\]  

  

Even these conditional probabilities are hard to wrap your mind around, we have to assume their distribution, often to uniform when we consider the \textbf{empirical} risk estimate:

  

\[ \hat E[L(y_i, f(x_i))] = \sum_{\Omega} L(y_i, f(x_i))\]  

  

\subsubsection{Quadratic Loss/Squared error loss}

$L_{SE}(Y, (f(X)) = (Y-f(X))^2$ where $f(X) = \hat Y :=$ the random variable $Y$ estimated as a function of $X$.

  

The risk of this loss function also has a special name: \textbf{MSE}

\[ MSE(f) = E_{X,Y}[L_{SE}(Y, f(X))] \]

  

# MSE

###  Conditional Expectation Theorem
If $X,Y$ are two [[Random Variable]] with $E(Y)=\mu, Var(Y) < \infty$, then the function $f$ which minimizes $MSE(f)$ for $X,Y$ is given by the conditional expectation:

$$ f(X) = E_{Y|X}(Y|X) $$



# Absolute Error Loss

Minimized by the median

