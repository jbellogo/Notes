Time series: A sequence of random variables indexed by time $\{ X_t : t\in T \subset \mathbb{N}\}$. It is a special case of a stochastic process. 


Stochastic process: a collection of random variables (they don't need to have the same distribution!) indexed by a set $I$. $I$ could be continuous or discrete.

\end{definition}

  

We often want to model time series data with \textit{non-stationary trends}:

1. Seasonality (Rents are higher in the fall because of incoming students )
2. Trending mean (Average rent prices are rising)
3. Non-constant variance (fanning in our out pattern)



Ideally, given a time series $\{X_1, X_2, ... X_n\}$ we would know the joint distribution of such vectors. 

\[ F(x_1, x_2, \dots x_n) = P(X_1, X_2, \dots X_n)\]

This is because individual (marginal) distributions of $X_i$ don't tell you about the combined behaviour.

But think of Reza: We *NEVER* have the joint distribution in practice. It is purely theoreticall.

  
We want to study a stochastic process as a mathematical which is a sequence of RV's with some predictable distribution ie not just a vector of n random and unrelated numbers. As such, the existence of a stochastic process should always be questioned. Kolmogorov's theorem tells us about the existence of  discrete time stochastic process build from $X_i's$ as long as the $X_i$ satisfy the two xonsistency conditions. 

  
If all finite dimensional distributions exist, and they are consistent with each other under marginalization, then the stochastic process exists.  Then \textbf{we can use finite dimensional models ot define a general process}.*****

  

All finite dimensional distributions of $X_1, X_2, \dots X_n$ are those of all non-empty subsets of the sequence ie $\{ X_1, X_2, \dots X_n \}^*$ so it is impossible to have all of these in practice since, if we are sampling, we don't even have the distribution of a single $X_i$ and must do with estimates. 

  

Fortunately, in most application we can get by with knowing $E[X_t], E[X_t^2], E[X_tX_j]$. Which is equivalent to knowing $E[X_t], Var(X_t), Cov(X_t, X_j)$ for \textbf{ALL} indices.

  

\begin{definition}

\textbf{A time series model} for the observed data $\{x_t\}$ is a specification of the joint distributions or more often in practice, the means and covariances of a sequence of random variables $\{X_t\}$ of which $\{x_t\}$ is a realization. 

\end{definition}

  

  

\subsection{Zero-mean time series models}

\subsubsection{i.i.d Noise}

\begin{definition}

\textbf{iid Noise} a sequence $\{X_i : i = 1,2\dots n\}$ with: 

\begin{itemize}

\item  independence property is satisfied: joint = product of marginals.

\item  $E[X_i] = 0 \forall i$

  

\end{itemize} 

\end{definition}

  

As is the case with a discrete time stochastic process with independent components, the memory-less property is satisfied.  

\begin{proof}

\[ P(X_{n+h} \leq x | X_1 \leq x_1, \dots, X_1 \leq x_n ) = \frac{P(X_{n+h} \leq x)  F(x_1, \dots x_n)}{F(x_1, \dots x_n)}\]

\end{proof}

Note that in the nominator above, the probability of the intersection of events is equal to the individual probabilities multiplied by independence. 

  

Also note how we can have the individual $X_i$ be continuously distributed but discrete stochastic process (indexed by the naturals)

  

\subsubsection{White Noise }

Sequence of uncorrelated random variables $\{X_1, X_2, \dots \}$ with zero mean and finite variance. Denoted $X_i \sim WN(0, \sigma)$

\begin{itemize}

\item $E(X_i)=0$ 

\item $Var$

\item $Cov(X_i, X_j) = 0$ for uncorrelated 

\end{itemize}

  

  

\subsubsection{Random Walk}

\begin{definition}

A R.V which is a \textbf{series} of \textbf{iid noise OR White noise} distributed R.V.s $S_t = \sum_{i=1}^t X_i$. Usually starting at zero. 

\end{definition}

  

What is the relationship between \textit{white noise} and \textit{iid noise}?

Independence is a stronger condition than non-correlation. For independence we need to know joint distributions but for non-correlation we don't. So we'd rather work with white noise. 

  

\section{Classical decomposition}

In regression we are always modelling $Y|X$ and not just $Y$ since we are actually using the explanatory variable to fit $Y$.

  

The general framework is to remove the \textbf{trend}, \textbf{seasonality}, and \textbf{non-constant variance} patterns in the data  so that \textit{hopefully} we are left with a stationary process. Then model the detrendized and deseasonalized data. 

  

\subsection{Additive classical decomposition}

Fitting models with trend and seasonality:

\[ X_t = m_t +S_t +Y_t \]

  

where,

\begin{itemize}

\item $X_t$ is value of the process at time $t$

\item $S_t$ models the periodic deterministic component of $X_t$ at time $t$

\item $m_t$ is the TREND deterministic component. Doesn't have to be linear.

\item $Y_t$ is the stochastic component, white noise 

\end{itemize}

  

  

Note that the expected value of the process depends on time: $E[X_t] = E[S_t] + E[m_t]$. Particularly if the expectation for the trend component is non-zero as the expectation of periodic functions is often constant.

  

We don't need Fourier series to model periodic patterns (in discrete stochastic processes), we can figure out the period $d$ and then use $d-1$ indicator variables whose coefficients give the period height at each point of time. Let's assume the period for some time series is 12 corresponding to 12 months, we use $d-1=11$ indicator variables $X_1, X_2, \dots, X_11$ to represent:

\begin{equation}

x_1 = 

\{

    \begin{cases}

        1, & \text{if month is February}\\

        0, & \text{else}

    \end{cases}

\end{equation}

The reason we don't need as many \textbf{indicator variables} as the period is that we can measure the first point (January) with just trend $X_1 = m_t+Y_t$ and then have the remaining $d-1$ coefficients $\beta_j$ tell us the deviation of point $X_{i+1}$ relative to $X_1$ it is the baseline. 

  

  

We use regression for $m_t$ and $S_t$, nothing new so far. The trend $m_t$ need not follow a linear regression model, we can model it to be any regular function ie. $m_t = \beta_0 + \exp{\beta_1t}$.

  

If we have monthly data, the period need not be $12$, it might be biweekly if we are measuring something that is correlated to paydays. 

  

\section{Loss Functions/Decision Theory}

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

  

\begin{theorem}

\textbf{Conditional Expectation Theorem}: If $X,Y$ are two random variables with $E(Y)=\mu, Var(Y) < \infty$, then the function $f$ which minimizes $MSE(f)$ for $X,Y$ is given by the conditional expectation:

\[f(X) = E_{Y|X}(Y|X) \]

\end{theorem}

  

\begin{proof}

************************************

\begin{itemize}

\item let $f(X) = c$ and show that the constant $c$ that minimizes the risk is the mean of $Y$.

\item Assume $c(x)$ minimizes 

\end{itemize}

\end{proof}

  

Notes:

\begin{itemize}

\item $E(Y|X=x)$ is a number depending on x. So it's a function of x

\item $E(Y|X)$ is a random variable

\end{itemize}

  

\subsubsection{Absolute Error Loss}

Minimized by the median

  

  

  

\section{Regression}

The MSE is minimized by the conditional expection $E(Y|X)$. But we don't really know how to get this, so we take a step back and assume the form of $f(X)= \bm X \bm \beta + \epsilon$ in the risk minimization problem (called OLS, RSSQ) and then solve for the coefficients using matrix methods. 

  

In multiple regression we have some simplifying assumptions s.t. 

\[ f(X;\bm \beta) = E[Y|X] = \beta_0 + \sum_{i=0}^{n} \beta_i X_i = \bm X \bm \beta + \epsilon\]

  

Where $X$ is the $n \times (p-1)$ design matrix. 

  

\subsubsection{OLS}

We call the risk under the assumed linear model the \textbf{Residual Sum of Squares}. To estimate the vector of parameters $\bm \beta$ using $\{ (y_i, \bm x_i) \vert i \in [n] \}$ where $x_i = (x_{i1}, x_{i2}, \dots x_{ip})$ represents a row on the design matrix where each $j$ column is a variate (rooms, bathrooms, parking spots) or an attribute (bathrooms squared $x_i^p$) of the $i-$th observation/unit.

  

\[ RSS(\bm \beta)  := \sum_{i=1}^n(y_i - \beta_0 - \sum_{j=1}^p x_{ij})\]

  

As a function of the coefficient vector, our estimate for $\bm \hat \beta$ in quadratic matrix form is:

  

\[ \bm \hat \beta = \argmin_{\bm \beta} (\bm y - \bm X \bm \beta)^T (\bm y - \bm X \bm \beta) \]

  

The OLS extimate for the coefficient vector is:

  

\[ \bm \beta_{OLS} = (X^T X)^{-1}X^T\]

  

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

  

  

\subsubsection{Assumptions on the residuals}

\begin{itemize}

\item The error terms and thus the $Y_i$ are independent. 

\item The error tersm and thus $Y_i$ are normally distributed (Not uniformly if you want to estimate conditional probabilities for some reason)

\item the error terms and thus $Y_i$ have a constant variance. 

\item the erro terms have a constant mean of 0. Not $Y_i$ necessarily though.n

\end{itemize}

  

\subsubsection{Regression in R}

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

  

  

\paragraph{anova(model.fit.1::lm, model.fit.2::lm, etc)}

Analysis of variance between two modesl. The F statistic $p-$value tests $H_0: \beta_{\text{big model}} \setminus \beta_{\text{small model}} = 0 $. Basically testing if all of the \textbf{extra} parameters in the big model are worth it. If our $p-$value is large, we may say that the are not (accept the null)

  

  

\section{Matrix Differentiation}

  

  

\section{Residual Diagnostics}

Figure out if $\epsilon_i \sim^{iid} N(0, \sigma ^2)$. 

  

All models are wrong, some are useful. If a model passes residual diagnostics it does not mean we have found the absolute predictor of the process, we just have something that fits the given data alright for interpolation. If our model fails a single residual diagnostics check, then we know it's no good. It's like when the doctor checks you, if you pass all tests it doesn't mean you're 100\% healthy, it just means he didn't find any indications of common disease. 

  

There are 4 assumptions about residuals, and here is how we test them:

\begin{itemize}

\item Normality

\subitem Look for bell-shape in histogram

\subitem q/q plots 

\subitem Shapiro-Wilk

\item Zero-mean

\subitem residuals plot look random about zero 

\item Constant-Variance 

\subitem Fligner-Killeen 

\subitem residuals plot bounded by straight vertical lines. 

\item Independent (random):

\subitem the only way to check independece is to see if joint equals product of marginals.

\end{itemize}

  

\subsection{Normality}

\subsubsection{Q-Q Plot}

We want more or less a straight line within the bounded blue lines.

  

from a Q-Q plot you can determin the shape of the histogram: 

* if there are points outside and above the blue line on the RHS, then you have a RH tail.

* If there are points outside and bellow the blue line on the LHS, you have a LH tail

  

\subsubsection{Histogram}

Look for bell-shape in histogram

  

If you say nah not normal -> go back and transform the data. 

  

\subsubsection{Shapiro-Wilk test of Normality}

A more formal, non-parametric test.

\[ H_0: Y_1, \dots Y_n \text{come from a Gaussian distribution} \]

  

The test is formal, sure, but is it really better than judging normality from a qq-plot by eye? 

- Well it works well at assessing normality towards the center of the distribution ... which is easy to cehck by eye. The problem with checking by eye is deciding if tails outside of the range are still normal.. this test does not tell us much about this... I haven't looked at the math, just took my profs word for it. 

  

\subsection{Constant Variance}

Plotting the data in different segments and them comapring the variability for each segment is a graphical method. 

  

A more formal mehtod is the Fligner-Kileen test

\subsubsection{Fligner-Kileen}

\[ H_0: \sigma_1^2 = \sigma_2^2 = \dots = \sigma_k^2 \]

  

recall: small p-value, strong evidence against $H_0$

  

  

\subsection{plot of residuals vs fitted values}

Don't shake them up because then you may introduce patterns that don't reallt exist, the fitted values x axis is just for indexing position. 

Examine this by eye to make sure nothing is obviously wrong. Don't look at it too long. This is not enough to determine randomness, or normality of residuals. you will need tests and normal !! plots in addition to this. 

  

\subsection{Independence}

It's impossible to test for independence without the joint probability distribution, so we will test for consequences of independence like  uncorrelatedness ie just the lack of a linear relationship, not the lack of any relationship at all. We know correlation -> dependence so we will run a blood test to make sure nothing is seriously wrong. 

\subsubsection{ACF}

Auto correlation plot: Will be good for forecasting. Blue bands measure serial correlation. for determining if the residuals are white noise you'd want about 95\% of the spikes to be within the blue lines 

  

Significant spikes at lags(x-position) 1 and 2 can be worrisome. 

  

Also, a slow ie. linear decay in this ACF plot confirms the existence of a trend in the residuals. 

  

  

\section{Bias-Variance}

\section{Variable Selection}

Some model selection criteria for fit

\begin{itemize}

\item $R^2$ and adjusted $R^2$

\item Akaike's Information Criterion (AIC, AICc)

\item Bayesian Information Criterion (BIC). 

\item Stepwise method in variable selection \

\end{itemize}

  

Some model selection criteria for predictive power: 

\begin{itemize}

\item Prediction Stanrdard error. 

\item $MSE_{prediction}$ criterion (cross-validation)

\end{itemize}

  

Note that modern modelling techniques involving regularization methods such as LASSO, and elastic net  already incorporate variable selection  in the process of parameter estimation. 

  

\subsubsection{R-squared}

amount of variability explained by the model. Measures the squared correlation between fitted and observed. 

Adding explanatory variates ALWAYS increases $R^2$

Adding explanatory variates does not always improve forecasting (can just add noise) hence a larger $R^2$ does not necessarily mean a better forecasting model. 

\subsubsection{Adjusted R-squared}

penalizes $R^2$ for the complexity of the model ie the number of parameters in the model.

  

  

  

\section{Regularization/Shrinkage Methods}

We will look at ridge, lasso, and elastic net regularized regression methods (can be applied to OLS ie. "linea regression" as well as to "logistic regression")

  

\subsection{Bias-Variance}

The motivation is in the bias vs. Variance tradeoff. Regular OLS regression seeks to minimize bias: best fit for \textbf{the OBSERVED data}. The problem with this is that NEW observations (think of it as a new test set) will have large variance because the model coefficients were chosen to FIT a specific set of data. In regularized regression we add a bit of bias to our model computer from a test set. This means that although the model will not be the "best-fit" for the test set data used in the coefficient computations, our model will have lower variance when new observations are observed! ie BETTER PREDICTIVE POWER. 

\begin{enumerate}

\item Bias: Measures fit. 

\item Variance: Measures predictive power. 

\end{enumerate}

  

\subsubsection{Multiple Linear Regression}

We optimize OLS to find our model coefficients

\[ \hat  \beta_{OLS} = \argmin_{\bm \beta} \{ (\bm Y - X\bm \beta)^T(\bm Y - X\bm \beta) \} = H \bm Y\]

\textbf{Challenges:}

\begin{itemize}

\item Multicolinearity

\item Curse of dimensionality: $n \leq p$. Since we need the design matrix $X \in M(\mathbb{R})_{n \times p}$ to solve the system, we require it to be invertible and not underspecified (one solution).

\item Variable selection. Similar to Multicolinearity, some variables are too correlated they provide superfluous information which messes up our model. If we only use OLS regression, we'd have to do trial an error by first postulating a model and then performing variable selection analysis on it with (APSE, Hypothesis tests, p-vals, all the good stuff) and this gets tiring. 

\item Adding predictiors will reduce RSS (increase $R^2$)... I think this means the "longer" your design matrix ($p$ but not necesarrily for polynomial degree) the less bias (better fit) but more variance (poor predictive power for unseen sets).  

\end{itemize}

  

\subsection{Regularized-regression}

\[ \hat  \beta_{regularized} = \argmin_{\bm \beta} \{ (\bm Y - X\bm \beta)^T(\bm Y - X\bm \beta) + \lambda \times PEN(\bm \beta)\} \]

  

Our regularized coefficients are obtained by minimizing the OLS (or some other loss function) PLUS some bias which is a $\lambda$-scaled function on the NON-INTERCEPT coefficients. 

  

Depending on ridge, lasso, elastic net we choose the PEN function 

  

$\lambda > 0$ is choosen through \textbf{cross-valdiation} (10 fold standard) which is just kind of trial and error on several values. use cv.glmnet in R

  

PROS/CONS or Regularized vs OLS

  

PROS/CONS lasso and ridge

  

  

\section{Stationary processes}

A discrete time series is a stochastic process. For ANY and ALL finite subset of times $\{t_1, \dots, t_n\}$ the finite dimensional distributions are the joind distributions given by the joint CDF $F(x_{t1}, \dots x_{t2})$

  

The idea model for a time-series is having its joint distribution. This tells us all there is to know about the sequence. 

  

There is strong and weak stationarity. Both refer to a property which implies that somethign about the finite dimensional distributions will remain unchanged under time-shift. 

  

STRONG: a finite dimensional vector with a respective joint distribution has the same joint as the vector shifted by constant time. 

  

STRONG stationarity implies that all statistical properties of the random vector reamin the same under time-shift. 

  

In practice strong stationarity almost never holds, it is too limiting of an ssumption. Also it requres the joint distributuon which we simply don't have in practice in Data Science. 

  

We mentioned that the hope of forecasting is that the first couple of moments can tell us enough about a a distribution to make our predicitons, that is MEAN, VARIANCE, and COVARIANCE (for periodicity..). This motivate the intoruction of a less limitinf definition fo stationarity where the restrictions are imposed ON THE FIRST FEW MOMENTS as oppose to the WHOLE finite dimenal distributuions. A more relaxed type of stationarity.

  

WEAK: 

Definition the MEAN FUNCTION of a time series $\{X_t\}$ is $\mu_X(t) = \mu_t = E(X_t)$ is a function of time which gives the mean of the random variable indexed by it on the series. 

  

If $\{X_t \}$ is a time series with finite variance for all $t$, then the \textit{auto-covariance function} (acvf) is defined by:

\[ \gamma(r, s)=Cov(X_r, X_s) \]

  

  

The time series $\{X_t\}$ is said to be \textbf{weakly stationary} if:

\begin{itemize}

\item finite second absolute moment forall t

\item constant mean FORALL times

\item scale-invariant pair-wise covariance for all pairs. 

\end{itemize}

  

Focusing on the third condition.

  

ie acvf satisfies $\gamma(r,s) = \gamma(r+h, s+h)$. Visually this means the period is constant. ie it doesn't contract and strectch at parts. Only depends on the distance between two variables and not on $t$.

  

The value of $\gamma_X(h) = \gamma(h,0)$

  

the auto-covariance at \textit{lag h}

  

  

  

\section{Time series forecasting blue print}

Given a time series data set.

\begin{itemize}

\item is is starionary? Check

\begin{itemize}

\item Constant mean

\item Finite variance

\item scale-invariant pair-wise covariance for all pairs. 

\end{itemize}

\item if not starionary, transform to stationary

\item forecast

\item add non-stationarity back

\end{itemize}

  

  

Removing stationarity:

Dealing with trend:

3. Trend estimation

\begin{itemize}

\item finite moving average filter. Useless for forecasting just a descriptive tool

\item Exponential smoothing

\item Polynomial regression

\end{itemize}

4. Tend elimination: Differencing 

  

  

  

  

  

  

  

  

  

  

  

  

  

  

  

  

\end{document}