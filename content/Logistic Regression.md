
It outperforms most models in binary classification tasks. 

also supports  multiclass classification but it often runs into convergence issues and will usually not outperform more complex, and uninterpretable, models like [[Regression Trees]], [[Neural Networks]], etc. 


Logistic regression is an interpretable model, unlike a random forest, which is more of a black-box method. the name regression comes from the RHS of the following equation, as you must assume a linear relationship $X \vec \beta$, note that like any [[Regression]], $X$ can be transformed to achieve  [[Regression#Polynomial|polynomial regression]]


$$
\text{log} (\frac{p}{1-p}) = X \vec\beta
$$

  

## logit function
$$\text{logit}(p) = \text{log} (\frac{p}{1-p})$$

*  Recall that the logarithmic function is defined over the positive reals: $Range(log(p)) = \{x | x >0 \}$ . So logit($p$) is only defined on $\frac{p}{1-p} := p \in (0,1)$

* logit has Range = $(-\infty, \infty)$ and domain $(0,1)$, so what it does, implicitly, is take values $p$ from $[0,1]$ onto the real line.


To recover the succcess/label 1 probability, p, we use the expit function:

$$ expit(x) = \frac{\exp(x)}{1+exp(x)}$$

$$ p = text{expit}(\beta_0 + \beta_1x) = \frac{\exp(\beta_0 + \beta_1x)}{1+\exp(\beta_0 + \beta_1x)} $$

  

As you would expect, p is equal to a function that takes the linear model onto the range $0,1$ which is fit for a probability.

  
# ODDS

\[odds = \frac{p}{1-p}\]

log odds is exactly what it sounds.

  

\textbf{A coefficient can be interpreted as a log odds ratio of a one unit differnce in the direction of its $x$ variable:}

If

  

$logit(p_i) = \beta_0 + \beta_1x + \dots + \beta_p x_p$

  

and

$logit(p_j) = \beta_0 + \beta_1(x+1) + \dots + \beta_p x_p$

Then $logit(p_j)-logit(p_i) = \beta_1$

  

\[

\beta_1 = log(\frac{odds_j}{odds_i})

\]

  

For interpretation:

Exponential coefficients give the log odds ratio of one unit increase in the x variate of the coeficient.

  

So if $logit(p_{admission}) = 10+.15x_{average}$

  

you can say: "on average, each 1\% increase in average \textbf{increases the odds} of admission by \textbf{a factor of} $exp(\beta_1) = exp(0.15)$, with all other variables held constant."

  

So if the odds ($\frac{p}{1-p}$) of admission for an average of $x_1 = 80$ are, say 7.38, then the revised odds for an average of $81$ are = $7.38 \times exp(.15)$

  

WE can only make statements about odds. We cannot say anything about how the probabilities $p$ themselves will change when you increase one variate by 1 because the increase is non-constant.

  

\subsubsection{model evaluation}

Logistic regression is less prone to overfitting than other learning methods.

\begin{itemize}

\item Linearity assumption makes the model highly inflexible.

\item There is no tunning parameter by default... you could regularize.

\item Usually no test/train/cv split for logistic regression needed.

\item it is hard to beat logistic regression (bi class) in terms of prediction.

\item it is easier to beat linear regression or multi-class logisti regression.

\item Affected a great deal with multicolinearity.

\item Only has \textbf{linear} decision boundaries

\end{itemize}

