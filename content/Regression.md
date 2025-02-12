
# Regression

The MSE is minimized by the conditional expectation $E(Y|X)$. But we don't really know how to get this, so we take a step back and assume the form of $f(X)= \bm X \bm \beta + \epsilon$ in the risk minimization problem (called OLS, RSSQ) and then solve for the coefficients using matrix methods. 

  
In multiple regression we have some simplifying assumptions s.t. 

$$ f(X;\bm \beta) = E[Y|X] = \beta_0 + \sum_{i=0}^{n} \beta_i X_i = \bm X \bm \beta + \epsilon $$

  
Where $X$ is the $n \times (p-1)$ design matrix. 

  

# OLS

We call the risk under the assumed linear model the \textbf{Residual Sum of Squares}. To estimate the vector of parameters $\bm \beta$ using $\{ (y_i, \bm x_i) \vert i \in [n] \}$ where $x_i = (x_{i1}, x_{i2}, \dots x_{ip})$ represents a row on the design matrix where each $j$ column is a variate (rooms, bathrooms, parking spots) or an attribute (bathrooms squared $x_i^p$) of the $i-$th observation/unit.

  

$$ RSS(\vec \beta)  := \sum_{i=1}^n(y_i - \beta_0 - \sum_{j=1}^p x_{ij})$$

  

As a function of the coefficient vector, our estimate for $\hat \beta$ in quadratic matrix form is:

  

$$\bm \hat \beta = \argmin_{\bm \beta} (\bm y - \bm X \bm \beta)^T (\bm y - \bm X \bm \beta) $$

  

The OLS extimate for the coefficient vector is:

  

$$ \bm \beta_{OLS} = (X^T X)^{-1}X^T$$

  

\paragraph{Sampling distribution}

The sampling distribution of the OLS coefficients estimator is $\tilde \beta_{OLS} \sim MVN(\beta, \sigma (X^TX)^{-1})$ 


The variance estimator also has a sampling distribution following a chi-squared. 
  

The test of hypothesis for $H_0: \hat \beta_j = 0$ uses the pivota quantity 

\[z_j = \frac{\hat \beta_j}{\hat \sigma \sqrt{v_j}} \sim t_{n-p-1}\]

Where $v_j$ is the $(j+1)^{th}$ diagonal element of $(X^TX)^{-1}$

  

Properties of the OLS estimator $\tilde{\beta}$ 

\begin{itemize}

\item it is unbiased ie. $E(\tilde{\beta}) = \bm \beta$

\item variance covariance matrix is $Var((X^T X)^{-1}X^T) = \sigma^2 (X^TX)^{-1}$. This means that the variability and thus length of confidence and prediction intervals depends on $\sigma$ (which we don't control that much) and on the design matrix $X$ which we can indeed control. The size of the variance will explode if $(X^TX)^{-1}$ explodes. This happens when columns of $X$ are \textit{correlated}, ie. you have \textit{redundant} information in the design matrix. 

\item $\sigma^2$ is estimated with the unbiased estimator $\tilde \sigma^2 = \frac{SSE}{n-p-1}$ recall $p$ is the number of exploratory variates. 

\item a $100(1-\alpha)$\% \textit{confidence interval} for $\beta_i$ is $\hat \beta_i \pm t_{\alpha/2, n-p-1}SE(\hat \beta_i)$ where the Standard Error of the estimate $SE(\hat \beta_i)$ is the square root of the corresponding diagonal element of the variance covarinace matrix  $\sigma^2 (X^TX)^{-1}$.

\end{itemize}

  

You can also show OLS with maximum likelihood estimation. 

  

\paragraph{Sum of squares decomposition}

We can show that TSS = SSReg + SSE

  

We consider the hat matrix $H = X(X^T X)^{-1} X^T$ which:

\begin{itemize}

\item is an \textit{orthogonal projection} matrix since it is indempotent.

\item is indempotent, so  $H^2 = H$

\item the fitted values are the projection of the observed values in the training set y onto the linear subspace spanned by the columnds of \textbf{X}. ie $\hat y = H y$

\item the estimated residuals are the corresponding orthogonal complement $\hat r  = y - Hy = (I-H)y$

\end{itemize}



# Regression in R

\paragraph{lm}

Consider the output of $lm$. The $p-$values of the coefficients test the hypothesis $H_0 : \beta_j = 0$ , so small $p-$values mean the that the $beta_j$ are useful/necessary and large ones mean that the variable $X_j$ is not adding much to the prediction or maybe it's information is also captured by another correlated variable. if $p > 0.5$ not a good fit. 
  

The $F-$statistic $p-$value is the probability that all coefficients (except the intercept $\beta_0$) are zero and we can model $Y_i$ better with just a constant $\beta_0$. 

  

  

If lots of coefficient $p-$values are large but the $p-$val of the $F-$statistic is small, this is a sign of colinearity. 

  

\begin{itemize}

\item \textbf{Residual standard error} "2.92" on $n-p-1$ degrees of freedom. 

\item Multiple $R-$squared: percentage of variability explained by the model. 

\item Adjusted $R-$squared

\item $F-$statistic $p-value$. Overall significance of th model. $H_0: \beta_1 = \beta_2 = \dots = \beta_p$

\end{itemize}

  
