### Financial Markets and NPV

Financial markets exist so companies and individuals can adjust consumption across time periods. The purpose is also to facilitate borrowing and lending.

Investors can invest directly into fiems or via third parties called financial intermediaries which grant them flexibility. 


financial intermediation can take three forms: 

\begin{enumerate}

\item Size intermediation. Eg. banks combine investments of many small investors into large loans for a few borrowers. 

\item Term intermediation. take from short term lenders (savings account) and re-lend to long term borrowers (mortgages).

\item Risk Intermediation. Intermediaries can assume the excess risk and protect borrower (hedge-funds investing into crypto)

\end{enumerate}

  

\begin{definition}

Project. Sequence of cashflows spread over time. 

\end{definition}

  

To evaluate a project we can use several rules. 

# NPV


\textbf{NPV rule:} project is good if NPV > 0. This implies the project is better than risk-free borrowing and lending in the market. 

*  Takes TVM into consideration, discounts all cashflows. 

* Easy to evaluate NPV for combinations of projects. 

* Can be applied to any weird pattern of cashflows. 



  

Cons: 

\begin{itemize}

\item Cashflows must be forecasted. 

\item What should the discount rate be?

\item Doesn't take into consideration size of project. 

\item Doesn't take into consideration required projects, or projects with a differnt time horizon, like a choice between two required insurance plans. 

\end{itemize}

  



## Capital Budgeting} is the decision-making process for accepting or rejecting new projects/investments.

\end{definition}

  

\begin{theorem}

\[ \text{NPV} > 0 \iff \text{increase in company value} \iff \text{increase in shareholder value}\]

\end{theorem}

  

\subsection{Payback Period Rule}

Measures how long it takes to "payback" the initial investment of a project.

  

Pros:

\begin{itemize}

\item easy

\item gives you a measure of liquidity. 

\end{itemize}

  

Cons:

\begin{itemize}

\item Ignores TVM

\item Ignores all cashflows after the payback period

\item What is the comparison rule? is a payback period of 4 years good? ambiguity.

\end{itemize}

  

so in terms of comparing projects, this only does one thing right: give a measure of liquidity. 

\subsection{Discounted payback period rule}

Number of periods in the future when the cummulative discounted cash flows total the initial investment. 

Pros:

\begin{itemize}

\item gives a measure of liquidity. 

\item Doesn't ignore TVM

\end{itemize}

  

Cons:

\begin{itemize}

\item Ignores all cashflows after the payback period

\item Ambiguity of comparison rule

\end{itemize}

  

\subsection{Internal Rate of Return}

\begin{definition}

\textbf{Cost of capital:} minimum RATE OF RETURN ("cost") needed to justify the "capital" needed to undertake a project.

\end{definition}

  

\begin{definition}

Cost of capital such that the NPV of a project is 0

\end{definition}

  

Rule: Accept a project if IRR > required rate of return. This "required rate of return" 

  

\subsection{Profitability Index}

\[ 

PI = 

\frac{\text{PV of future cashflows}}{{Initial cost}} 

= \frac{\sum_{t=1}^{\infty}\frac{C_t}{(1+r)^t}}{-C_0}

= \frac{C_1 + C_2 + \dots}{|C_0|}

 \]

notes:

A project has $PI > 1$ exactly when $NPV > 0$. Convince yourself: Well just look at it mathematically, $ 0  < NPV = C_0 + C_1 + \dots \implies C_1 + C_2 + C_3 + \dots > -C_0$ and thus the nominator of the Profitability index calculator is bigger than the denominator, thus $PI>1$. 

  

  

Interpretation: $PI = 1.2$ means that the future cashflows are 20\% larger than the cost of the principal investment. So "loosely speaking," the project generates a 20\% excess return over its life. 

  

PROS:easy and correct for independent projects 

CONS: Scale. Maybe we don't care about percentage returns and only about absolute returns. 

  

\section{Capital Budgeting}

What cashflows to include in analysis? \textit{net incremental cashflows}, that is, cashflows that occur exclusiveley due to acceptance of the project (not the cost of toilet paper in the office). To identify a comprehensive list of the cashflows as yourslef: 

\begin{center}

What is the difference betweeen the cashflows of the entire firm \textit{with} the project VS \textit{without} the project?

\end{center}

  

We are interested in Cash flows, not accounting income. 

  

We exclude:

\begin{itemize}

\item sunk costs: costs that ocurred in the past. 

\item depreciation

\item goodwill: extra profit paid by other parties.

\item unearned capital gains: appreciation of assets (taxable).

\end{itemize}

  

We include: 

\begin{itemize}

\item Opportunity costs: cashflows that would have happened if the project were not accepted. ie if Rocky Balboa doesn't fight and decides to wash cars instead, he will get a carwashing salary but at the same time give up the opportunity and money that comes from fighting. 

\end{itemize}

  

\subsubsection{formulas}

Operating Cash Flows (OCF): inflows and outflows related to business activity. 

Earnings before interest and taxes (EBIT)

  

\[ OCF = EBIT - Taxes + Depreciation \]

\[ EBIT =  Revenue - Cost - Depreciation \]

\[ Taxes = EBIT \times Cotporate Tax Rate = EBIT 

\times T_C \]

  

The project cashflows include initial cost when purchased (material asssets), and salvage value when fixed assets are sold (inflow) (sale used trucks, machinery, patents, etc at the end.)

  

OCF is independent of depreciation (it ends up cancelling in formula) because, intuitiveley, depreciation as an accounting concept to allocate the initial cost of the product over time, and not a cash cost. 

  

\textbf{NOTE:} Capital cost: initial costs. Cost of capital: rate of return. 

  

\subsection{Capital Cost Allowance}

In Canada, depreciation is NOT tax deductible. Instead the CRA allows a Capital Cost (initial investment) Allowance which provides a "tax-shield" which reduces EBIT and thus taxes.  

  

Every year, the undepreciated capital cost (UCC) is reduced by the CCA rate which depends on the class of the asset at hand (ie $10, 10*(1-r), 10*(1-r)^2$), for instance cars may have a CCA rate higher than warehouses. 

And from that UCC we take a tax rate to get the actual tax shield amount: amount to be deducted from EBIT.  

  

PVCCATS : Present Value of Capital Cost Allowance Tax shield.

  

\subsection{Equivalent Annual Cost}

Used when NPV misses the point. EACs spread the NPV of different projects to each year in a "financially equivalent way"

  

  

\subsection{Inflation} 

\[ (1+Nominal) = (1+ Real) \times (1+Inflation) \]

The CCA tax shields must be calculated in nominal terms, since once the asset is purchased, the entire CCA table is determined REGARDLESS of future inflation. 

  

\subsection{Risk Analysis}

Contrary to prior examples, in real life, future cashflows are uncertain. Methods to evaluate project with uncertain cashflows: Decision trees, MC, etc.

  

\begin{definition}

\textbf{Contribution Margin:} Reveals how much 1 unit of product sales contributes to net income. $ (Unit revenue- \text{unit variable cost}) * (1-T_c) $

\end{definition}

  

Example a Doughnut sells for 1.5, costs .7 to make, its contribution margin is .8 times corporate tax on profit. 

  

\section{Return and Risk Measures}

The financial market is more than just risk-free borrowing and lending. We can invest on  instruments such as cash, stocks, ETFs

  

In general: High risk expects high return. Low risk low return. 

  

to measure return, we consider "hypothetical return of selling now" include dividends of the current period and selling price. 

$Return =  \text{Div}_{t+1} + (P_{t+1}-P_t) = \text{Dividend yield} + \textbf{Capital gains yield}$

  

Holding period returns are geometric means. 

  

Risk measures are variance and stdev/volatility.

Drawbacks of volatility as a risk measure: symmetric penalty for loses/profits and it is a risk measurement around the centre of the distribution (ie symmetric around mean). Other measures of risk: Downside Semi-Variance, VaR, 

Conditional VaR. Risk can depend on highesr moments: skewness, kurtosis, etc. If R is normal then all higher moments can be calculated from the first 2 (ie mean and var)

  

Stock returns are NOT normally distributed. 

  

\section{Capital Asset Pricing Model (CAPM)***}

\subsection{Portfolio of two risky assets}

We have a randon variable equation to describe the portfolio RV: $\pi = t*A + (1-t)*B$. A portfolio is a linear combination of risky (Random variable) assets. We wish to compute portfolio statistics, which is easy. 

  

An important question is: What is the best weight distribution for the portfolio? ie what percentage should be invested on asset A and on asset B. To answer that notice that we can do a couple of things: we can maximize return and we can minimize risk as a function of weights $t$.

  

\begin{definition}

The feasibility/opportunity set is the the set of portfolios that can be constructed from a given set of assets. This is enforced by the weights constraint $\bm{w}^t \bm{e} = 1 $. Visually, it will be the inside of the hyperbola. 

\end{definition}

  

\begin{theorem}

The efficient set will belong to the frontier/border along the hyperbola. Any portfolio along the efficient frontier is "good enough," and the choice  between efficient portfolios will depend on an individuals "risk tolerance."

\end{theorem}

  

\subsection{Efficient Frontier}

turn attention to multi-asset portfolios. Most variables are intuitive: $\bm{\mu}, R, w, e$. Now, for $\Sigma$, recall that entry $ij$ of the Variance-Covariance Matrix corresponds to $COV(R_i, R_j)$ and that diagonal elements correspond to variances. 

  

Portfolio return: 

\[ \mu_P = \bm{w}^T \bm\mu \]

  

Portfolio variance:

\[ \sigma_P^2 = \bm{w}^T \Sigma \bm{w} \]

  

A key fact is that diversification reduces portfolio risk. 

\[ \sigma_P \leq \sum_{i=1}^N |w_i| \times \sigma_i \]

  

How do we construct optimal portfolios, uniqueley identified by $\bm w^*$ for a given set of $N$ risky assets.

  

Assumptions: 

\begin{itemize}

\item Single period model, ie no dividends no compounding, just evaluating returns of assets A and B one year from now. 

\item Assets are perfectly divisible, ie $\bm w \in \mathbb{R}^N$

\item No transaction costs and no taxes (this is a good assumption to always mention in our types of questions). 

\item max return, min variance, or both.

\item mean returns and covariances $\Sigma$ are known. 

\item $\Sigma$ is positive definite. This means all  securities in the portfolio are risky ie stocks.

\item Not all expected returns are equal.

\end{itemize}

  

***** 

\begin{theorem}

\textbf{(Two-Fund Theorem)}: The formula $w_{opt} = w_m + \tau w_z$ states that any efficient portfolio can be replicated by two portfolios where $w_m$ is the minimum variance portfolio, and $w_z$ is self financing. These two portfolios can generate the whole efficient frontier. 

\end{theorem}

  

An investor seeking efficient porfolios needs only invest in combinations of two portfolios that are known to be efficient. So only two investment products provide a complete investment strategy.

  

\subsection{Inclusion of a Risk-Free Asset}

The assumption that $\Sigma$ is positive definite means no security is risk-free. If there was a risk free-asset, $\Sigma$ would have one row of all zeros. 

  

Now let's set up the CAL introduction. First, consider the portfolio $P = (1-w_0)*Q + w_0*r_f$, consisting of one risky asset $Q$ and one risk-free asset with weight $w_0$ and return $r_f$. Recall that the risk free asset is not a random variable  so the only quantity we have from it is its expected return ie the savings account interest. 

We have the following equations for the mean and variance of this portfolio. 

  

Mean:

\[ 

\mu_P = (1-w_0)* \mu_Q + w_0*r_f 

\implies 

\mu_P = \mu_Q + (r_f - \mu_Q)*w_0 \]

  

Considering that only the risky asset $Q$ contributes to variance we have volatility:

\[ \sigma_P = (1-w_0)*\sigma_Q 

\implies 

w_0 = 1- \frac{\sigma_P}{\sigma_Q}

\]

  

Combining these two equations by substituting $w_0$ from (2) into (1) we have the \textbf{Capital Allocation Line (CAL)}. Note that it requires a couple lines of algebra to show. 

  

\[ \mu_P = r_f + \frac{\mu_Q - r_f}{\sigma_Q} * \sigma_P \]

  

  

Now you may be thinking, how is this useful for computations since the portfolio is pretty much just an affine function of the risky asset? Well the CAL is not used for computations, but to examine its feasible solutions on $( \mu_P, \sigma_P)$ space. This is because the variables $r_f, \mu_Q,$ and $\sigma_Q$ are presumably known and thus we are left with the equation of a line. That being said, the CAL's are a amily of lines indexed by the risky asset. IMPORTANT: On $(\mu_P,  \sigma_P)$ -space we got the efficient frontier which is a horizontal hyperbola. Inside of it lie all feasible portfolios, so for any point inside this convex set we have a unique CAL. We have not yet found an optimal portfolio until we talk about CML.

  

  

The slope of the CAL is called the \textbf{sharpe ratio:}

\[ \frac{ \mu_Q - r_f}{ \sigma_Q } \]  

  

What does the sharpe ratio represent? Recall that the numerator is the difference in returns of the assets in the specific portfolio: the risky return minus the risk-free return, and so it represents the "excess return." The Sharpe ratio in turn represents the \textbf{"excess return per unit risk"}. For risky asset $Q$ the sharpe ratio it literary tells us how much better or worse its return is than a savings account for its risk. 

  

  

\textbf{For a given risk-free asset return (intercept), the steepest CAL is referred to as the Capital Market Line (CML) and it is the one with intecept $r_f$ that is tangent to the efficient frontier}

  

Where the capital market line is tangent to to the efficient frontier, we got ourselves the statistics of what is called the "tangent portfolio."

  

\begin{theorem}

\textbf{One-Fund Theorem}: There is a unique optimal risky portfolio $M$, charachterized by $w_1, w_2, \dots, w_N$ such that any efficient portfolio can be \textit{constructed} as a combination of $M$ AND the risk-free asset $r_f$ by varying $w_0$. This creates a NEW efficient frontier which forms a line called the CML. 

\end{theorem}

  

Note that the tangent portfolio changes with $r_f$. If $r_f$ increases, then $\sigma_M$ and $\mu_M$ increases and the slope of the CML decreases.

  

So there are two stages and two \textit{subsequent} efficient sets to portfolio selection. This is called the \textbf{"SEPARATION PRINCIPLE"} since the determination of the optimal risky portfolio , $M$, is separated from teh preferences of the individual. 

\begin{itemize}

\item Determine the tangent portfolio $M$. ie determine how much of each risky stock is optimal.  

\item Decide the optimal mix of tangent portfolio and the risk-free asset based on investor's risk-preferences.

\end{itemize}

  

\subsection{Capital Asset pricing Model}

The diversification effect says that by adding securities toa portfolio we can reduce its overall risk. In general, risk cannot be reduced to zero.

  

Two sources of risk of a security:

\begin{itemize}

\item Systematic risk: market risk, non-diversifiable risk. The economy/market/system itself might be at a low or go belly up. 

\item Non-systematic/idiosyncratic/diversifiable risk. Invest in Oil and Tesla, S\&P 500 and Gold.

\end{itemize}

  

  

  

We can only diversify away non-systematic/idiosyncratic risk. A key consequence is that \textbf{investors should only expect to be compensated for systematic risk} ie the risk of cars, the risk of crypto. Investors \textbf{should not expect tor receive excess return for assuming non-systematic risk} since that can be diversified away. So if i'm a hedge fund manager, investors expect me to bet on all outcomes. If I have a crypto portfolio, they are rewarded for the risk of the crypto market, not for the risk of owning individual coins.... \textbf{NOTE*} feels like there's more to this.

  

So, given a security A, it has a certain, inherent amount of ideosyncratic risk: the cars and oil market determines how BMW does and that can't be changed. 

  

The systematic risk of a security is the market risk of that security, ie how it behaves compared to the market as a whole. 

  

So, to quantify the systematic risk of security A, we need the know its correlation with the market portfolio. 

  

\begin{definition}

\textbf{Market portfolio @TODO DEFINE !!!!!???/}

\end{definition}

  

Given a security $A$ and a market porfolio $M$, we define the securitiy's beta, $\beta_A$ by:

\[ \beta_A = \frac{Cov[R_A, R_M]}{Var[R_M]}\]

  

A security's beta is a \textit{measure of the systematic risk of the security}. 

  

The CAPM formula:

\[ \mu_A = r_f + \beta_A *(\mu_M - r_f) \]

  

Intuitiveley this quantifies how the return of our favourite asset can be determined from the market return. 

  

Note the risk premiums: 

\begin{itemize}

\item Market risk premium: $\mu_M - r_f$ 

\item Risk premium of Asset A: $\beta_A *(\mu_M - r_f)$

\end{itemize}

  

CAPM Assumptions: 

\begin{itemize}

\item All investors are rational, mean-variance optimizers. 

\item Investors plan for a single horizon.

\item All assets are \textbf{publicaly} traded.

\item All information is publically avaliable. 

\item No taxes or transaction costs.  

\end{itemize}

  

Note that CAPM tell us the expected return of an asset independent of its volatility. This means that, \textbf{in a diversified portfolio!!}, the toal risk of an asset $\sigma_A$ is irrelevant. Since we are able to diversify all the non-systematic/ideosyncratic risk away, only the systematic risk, captured by $\beta_A$, matters. 

  

\subsection{Security Market Line (SML)}

The CAPM generates a line in the $(\beta, \mu)-$plane called the Security Market Line $(SML).$ The CAPM is uniquely charachterized by the market and the risk-free rate (intercept $r_f$, slope $\mu_M -r_f$). In theory, \textbf{all securities lie on the SML line}. By plotting actual securities and comparing them to their expected location on the SML, we can determine if a security is correctly priced. 

\begin{itemize}

\item If a security is \textbf{above} the SML, it has an actual return greater than expected for the given systematic risk measure $\beta$ so it is \textbf{underpriced}

\item If a security is \textbf{bellow} the SML, it has an actual return lower than expected, so for the given systematic risk it is overpriced (underdelivering, we'd expect more for that risk).

\item On the line = correctly priced. 

\end{itemize}

  

\begin{definition}

The Traynor ratio of a security is a performance metric 

\end{definition}

\[ \frac{\mu_A-r_f}{\beta_A}\]

  

It measures the excess return of a security, for each unit of systematic risk, as given by beta. All securities on the SML have the same Traynor ratio. \textbf{Securities with a higher Traynor ratio have excess risk-adjusted returns, and can be identified as being underpriced.}

  

\subsubsection{finding beta in practice}

We don't compute $cov(R_M, R_A)$, because first of all it would have to be estimated, and second it might be hairy. Instead, we extend the CAPM formula from:

  

\[ \mu_A - r_f = \beta_A*(\mu_M - r_f) \] 

  

to a estimator version where we regress on observed returns of both a market proxy, like the S\&P 500, ($R_{M_i}$) and our favourite asset ($R_{A_i}$). We consider the regression equation: 

\[ R_{A_i} - r_f = \alpha_A +  \beta_A (R_{M_i}-r_f) + \epsilon_{A_i} \]

  

\textbf{Note} that in this equation, we observe $R_{A_i}$ and $R_{M_i}$. Our residuals are $\epsilon_{A_i}$, and we are regression to find parameters $\alpha_A$ and $\beta_A$. In theory, $\alpha=0$ since all securities should lie on the SML, but this is not always the case so we call it \textbf{Jensen's alpha}. If $\alpha_A > 0$ then our security has excess risk adjusted returns above that predicted by CAPM. This is why investors are always "seeking alpha."

  

\section{Arbitrage Pricing Theory (APT)}

It's all about expected returns. 

  

The CAPM formula states that the expected return on a security is a function of the return of the market portfolio. Put another way, the returns on securities are a function of the performance of the market. The APT extends this idea to include \textbf{additional factors}. 

  

Start with the obeservation that the actual return of a security can be decomposed into two parts. 

\[ \text{actual return} = \text{expected return} +\text{unexpecte return}\]

  

Unexpected return due to risk can be further decomposed into two parts:

Risk = Systematic  + Ideosyncratic.

The idea is that there are unexpected events which affect all securites (systematic risks) like war or natural disasters, as well as unexpected events which only affect a specific security: ie the death of a farmer affects  farm stock.

  

APT model:

\[ R_A = \mu_A + m_A + \epsilon_A\]

Where:

\begin{itemize}

\item Actual return $R_A$

\item Expected return $\mu_A$

\item Excess systematic return $m_A$

\item ideosyncratic return $\epsilon_A$

\end{itemize}

  

\subsection{Factor Model}

APT uses a factor model \textbf{for systematic risk}. 

  

Assume there are $k$ factors $F_1, F_2, \dots, F_k$ influencing the excess systematic return of a security.

  

The factor betas $\beta_{A, i}$ specify the sensitivity of asset A to factor $i$.

  

\[ m_A = \beta_{A, 1}F_1 + \dots + \beta_{A, 2}F_2\]

  

So the expanded APT model: 

\[ R_A = \mu_A + (\beta_{A, 1}F_1 + \dots + \beta_{A, 2}F_2)+ \epsilon_A

\]

  

  

  

Note that factors model assumes linear sesnsitivity to risk factors. 

  

  

Some common factors:

\begin{itemize}

\item Macro economic factors: GDP, inflation, oil, gold.

\item Natural disasters: earthquakes, floods, global warming.

\item socio-political: fiscal policies, warfare, etc.

\end{itemize}

  

Common assumptions: 

\begin{itemize}

\item $E(F_i) =0$ and $E[\epsilon_A] =0$ so that all the "expected return" is captured in the $\mu_A$ of the same name. 

\item Assume factors are independent. $Cov(F_i, F_j) = 0 \iff i \neq j$ 

\item Assume ideosyncratic factors are independent to systematic factors, $Cov(F_i, \epsilon_A) = 0$. 

\item Assume ideosyncratic factors of different securities $A, B$ are independent $Cov(\epsilon_A, \epsilon_B) = 0$. ie one farmer only produces one product, so if it dies it only affects that one product (oversimplified). 

\end{itemize}

  

  

\textbf{CAPM vs APT}

CAPM deals with expected returns, APT with actual returns, it looks at the unexpected returns that deviate from the predicted. 

  

\break

  

\textbf{NOTE that throughout CAPM and APT we are looking at portfolio returns, which really are RATES of return. Unlike absolute returns, a rate is a valid measure to compare securities. This is why we call the "expected value" (really just a constant cuz the risk-free asset is not a Randon Variable, but OK!) of the risk free asset $r_f$ and add it is added to $(1-t)E[R_A]$ }

  

\subsection{Expected returns}

  

\begin{definition}

\textbf{The Market Model}: is a one-factor model where the marker is the only risk factor.

\end{definition}

\[ R_A = \mu_A + \beta_{A,M} (R_M - \mu)M) + \epsilon_A \]

  

We can derive CAPM from the APT model. \textbf{@TODO pg. 50}

  

The connection is established in the following APT formula: 

  

Assume an universe of $N$ assets. Then the expected return on asset $i$ satisfies.

\[ \mu = r_f + \beta_{i,1} \gamma_1 + \dots + 

\beta_{i,N} \gamma_N

\]

  

the values $\gamma_i, i \in [1,\dots, k]$" are the same for all $N$ assets. These are called the "factor risk premiums." 

  

NOTE: $\beta_{i,1}$ measures how much factor \#1 affects asset $i$ while $\gamma_1$ is how much factor \#1 affects all assets equally. 

Turns out that $\epsilon_A$ is a random variable with zero mean and some non-zero variance. 

  

Finally if we use the law of large numbers (expected value of average is expected value of individuals as sum goes to infty), we get that in large portfolios, the idiosyncratic risk is all diversified away so $\epsilon_A$

  

  

\section{Risk, Return, and Capital Budgeting}

The discount rate for a project is driven primarily by the \textbf{project beta} and not by the company's beta. So the interest of making a samsung phone will depend on the sensitivity of phones to the market and not so much on the sesnsitivity of samsung to the market... thinking of forecasting concepts, samsung and samsung phones are linearly dependent. Samsung phones has the most information, don't include unecessary info or it will emss up the regression... huh?

  

\newpage

  

\textbf{How do we compute the beta of a project?} depends on the project obviously.

If the project "looks like" an extension of the company, use comapny's beta. If it looks very different, use the industry beta.

  

  

If tim hortons has a project consisting of opening a new location... well that project pretty much is the embodiment of the company so use the company beta. But if Tim Hortons is raising money for cancer, then use the cancer donations "industry" beta to get a better idea of your rate of return (ie we can expect a 10\% return in donations (return) based on publicity investment because the donations beta is 0.1 (constant always) and the current F is really low because the economy is bad rn so people are not donating as much as they normally do (actual - expected donation returns).

  

\subsection{Determinants of Beta}

Different companies and projects have different betas due to different factors such as: 

\begin{itemize}

\item Business rick: cyclicality of revenues and operating leverage. 

\item Financial risk: financial leverage.

\end{itemize}

  

\subsubsection{cyclicality of revenues}

\textbf{cyclical stocks have high betas}

Beta is a measure of sensitiviy to the market changes, a good indicator of market changes is the business cycle: overall GDP has a rising trend and is cyclical in that there are expansions and recessions. So, a stock of a business that follows the business cycle like in technology or entertainment industries (things we spend on when we all have money coming in) will have a high beta.

  

Other companies that deal with things like utilities, funeral homes, movies... their revenue doesn't really depend on the business cycle so they  will have low betas.

  

This is more of a qualitative idea. 

  

\subsubsection{Operating Leverage}

 OL is defined by:

 \[ OL = \frac{\text{\% change in EBIT}}{\text{\% change in sales}}\]

 It tells by how much profits increase per increase in sales. This depends on fixed costs and variable costs. 

 It can be shown that a high proportion of fixed cost leads to a high operating leverage, and thus a high risk. This is because a high operating leverage indicates that profits are more sensitive to sales, and magnifies the effect of cyclicality. 

  

\subsubsection{Financial leverage}

Financial leverage: using debt to amplify returns from an investment or project. 

 \begin{definition}

 Debt to Equity ratio, $ DE ratio= \frac{Debt}{Equity}$

 \end{definition}

 Asset is a portfolio of Debt and Equity, based on the balace sheet equation. \textbf{WTF????}. Usually $\beta_{E} >> \beta_D \approx 0$. So debt rates are assumed to be fixed or change on a predetermined pattern but not based on the market performance. Meanwhile equity is essentially ownership of shares/stocks so equity must carry the market risk if we assume CAPM and so $\beta_E > 0$

 \textbf{Formula 1}:

 \[ 

 \beta_E \approx \beta_{Assets} (1+\frac{D}{E})

 \]

 Stay tuned for \textbf{OPTIMAL DE ratio}

 Intuitively, higher D/E ratios mean lower betas because $D >> E \implies$ less market/systematic dependency and thus the less market risk, ie smaller beta.

 \subsection{Weighted Average Cost of Capital}

 \textbf{Note:} CAPM and APT are computed by the equity beta and not the asset beta. 

 We have computed rates of return for projects using CAPM and APT. An unspoken assumption in all projects seen thus far is that they consist of 100\% equity, but in reality, a lot of projects are also financed by debt, so now we include that in out calculations. 

Most companies and projects are financed by a \textit{mix of debt and equity.} Therefore, we need a "blended discount rate" called the weighted adjusted cost of capital. 

  

For a project: 

\[

r_{WACC} = \frac{E}{A}r_E + \frac{D}{A}r_D*(1-T_C)

\]

where:

\begin{itemize}

\item $r_E$: cost of equity, calculated by CAPM or APT

\item $r_D$: cost of debt, typically equal to the interest rate on the company's debt, ie at which they borrowed money. 

\item $T_C$: corporate tax

\item $\frac{E}{A}$ and $\frac{D}{A}$ are calculated using the $D:E$ ratio where $A = D+E$. If I say D/E of 2 that means debt is twice as equity. 

\end{itemize}

  

The reason the debt is multiplied by $1-T_C$ is because interest costs are tax deductible. Consequently, the factor $r_D(1-T_C)$ represents the \textit{after-tax} cost of debt. 

  

WACC is like a company's \textbf{overall return on assets}. However, note that different subdivisions, departments and projects of a company may have different WACCs

  

Managers \textbf{desire a low WACC}. This is because Asset value = $OCF \times a_{\infty, r_{WAAC}} = OCF/ r_{WACC}$

  

Appart from equity and debt, there are two additional factors that effect the cost of capital: liquidity and adverse selection. 

  

Liquidity here means the ease and cost with which investors can trade a security. 

  

Since investors think of their final returns as the net of all costs, including transaction costs, amagement fees, etc, stocks with high liquidity usually have a lowe WACC.

  

In real life we have information asymetry. If i believe you know more than me, I am reluctant to trade with you, I believe that by you knowing more than I do you are likely to take advantage of me. In compensation, I will sell to you at a higher price than I would buy from you. This leads to wider bid-ask spreads and less trades, thus causing lower liquidity. Think Ethereum-backed NFT prices, creators may be tight with Vitalik and believe that he will release version 2.0 and keep the hype but investors are not so sure, so there is large bid-ask spreads. 

  

To reduce cost of capital, companies can disclose more information, they can also try to make their stock more liquid by making it easier to trade: stock splits, list on more exchenges, and list online. 

  

\section{Efficient Market Hypothesis (EMH)}

\begin{definition}

EMH states that an efficient capital market is one in which stock prices fully reflect avaliable information. It focuses on "information efficiency" rather than "transactional efficiency."

\end{definition}

  

If we accept the EMH, there are \textit{significant implications} for investors and firms, including. 

\begin{itemize}

\item Information is reflected in security prices immediately once it is known. 

\item Knowing information after it is publically released is useless. 

\item Firms should expect to receive the fair value for securities, they cannot profit from fooling investors about their stock prices.

\end{itemize}

  

Aside: I see an issue with the first item. Information cannot immediatly affect security prices, as security prices should change as a result of supply/demand, as a result of human activity, at least as far as I know. Thus, there will the smallest window in which the first investors to act as a response to the new information will be able to construct an arbitrage. ie you learn the James Bond plane crashed because you saw it as you had a bloomberg terminal at hand at hand and immediately shorted stock, selling for pre-incident prices and buying post-incident for less (price drop). Note that if you have an automated bot makes decisions based on recently published newspapers, you have to assume the EMH implications hold and even a bot that trades in a matter of seconds is too late just because it uses information that is now public. 

  

In fact, there may be delays in the market's reaction. And also overreactions that overshoot past the efficient market response. For instance, after good news, the stock price may rise in a parabola peaking before settling to a lower, more stable high, provided the good news permanently (semi-permanently) increase the price. Same with bad news.

  

The foundations of market efficiency are built upon investor rationality. Investor rationality assumes investors \textit{adjust their estimates from new information} in a rational manner, much like conditional probability, or monty hall. To paraphrase professor John Tsitsiklis: new information about our universe should affect our beliefs about it.

  

Now it is true that not all investors will not have the same abacus, algorithms, or results. There will be independent deviations from rationality, but these will offset each other; \textit{stupidities will cancel each other out}. Afterall, \textbf{EMH does not require ratioinal individuals, but a rational population overall}. Any existing arbitrage opportunity will be taken in large quantity and vanish quickly. Which is exactly what you noted in your first impressions of EMH. 

  

\subsection{Types of Market Efficiency}

\begin{itemize}

\item Weak form

\item Semi-strong form

\item Strong form

\end{itemize}

  

\subsubsection{Weak form Efficiency}

Security prices reflect all information contained in past price and volume data. 

\[ P_t = P_{t-1}+ \text{Expected return} + \textbf{random error} \]

Anticipated news forms part of the expected return.  

The random error comes from the arrival of \textbf{unanticipated} news. By definition, unanticipated news arrives randomly. Thus if this model holds stock prices are said to follow a random walk (technically with drift right? since there is a non-zero expected return, and a random jump process might better encapsulate what we are saying.)

  

Implies \textbf{technical} analysis is useless.

  

If technical analysis works $\implies$ the market is $ < $ weakly efficient. 

  

\subsubsection{Semi-strong form efficiency}

Security prices reflect all publicly available information. Publicly available information includes historical price, volume, also company financial statements and annual reports, public info about competitors, interest rates, GDP data, and weather forecasts. 

  

Implies \textbf{fundamental} analysis is useless. 

  

If fundamental analysis works $\implies$ the market is $ < $ semi-strongly efficient. 

  

\subsubsection{Strong Form Efficiency}

Security prices reflect all information -public and private. If news becomes known to someone -ANYONE, the market instantly reacts to it rationally. Insider trading cannot profit. This is the "best" market... why? if margins are fair they are tighter then how do we make money through financial markets. EXACTLY! if the markets are strong form efficient, why trade stocks at all? the only way to make money is by selling products. In reality almost no one believes strong form EMH as it is difficult to believe that insider trading cannot profit. It's like saying that if the two fighters in a boxing match agree that the dog will win beforehand and they both place a bet on him, they won't profit.Insider trading should intuitiveley work. Or simply if you know the company's financial are awful because you're the chief accountant and you get fired, then you will go ahead and short some stock before it goes public. 

  

\subsubsection{Misconceptions of EMH}

\textbf{"It is not possible to make money in the market"}. EMH does says is that prices reflect information quickly and accurately, so thre is no way to consistenly "outsmarting" the market. But you do make money, stocks have an expected return with associated risk.

  

\textbf{"A monkey can make as good an investment decision as a trained investor"}. Oddly enough this is kinda accurate but what investors \textit{can} do is select protfolios with a desired level of risk. 

  

\textbf{"Prices are random for no reason"}. Prices reflect informaiton and are driven by new and random information - so there are reasons, they just arrive randomly. 

  

  

\subsubsection{Summary}

Three types of market efficiencies

\begin{itemize}

\item Weak: Security prices reflect all info in past price and volume data avaliable. Technical trading doesn't work.

\item Semi-strong: Security prices reflect all publicly available information. Fundamental analysis doesn't work.

\item Strong: Security prices reflect all publicly and privately avaliable info. Insider trading doesn't work.

\end{itemize}

\textbf{Joint hypothesis problem:} How could we "disprove" the EMH? Suppose there is a strategy that "works" to disprove the EMH. This means it can help you make money consistently, but not just money, T-bills make money, this strategy shold help you make \textit{abnormal} amounts of money. So how do we determine what abnormal is? we need a benchmark of for normal returns, so we need to introduce a second hypothesis/model such as CAPM for that. In doing so we are asking the question: is CAPM true or is EMH true? And that we cannot answer logically because they have non overlapping assumptions.

  

We will assume the EMH.  

  

\section{Long-term financing (Debt and Equity)}

To raise cash and pay for projects, companies have two main tools: 

\begin{itemize}

\item Issue debt. Sell bonds. 

\item Issue equity. Sell shares.

\end{itemize}

  

\subsection{Equity}

Comapnies issue shares through IPOs and then subsecquent public offerings. The amount of shares are refulated by the Articles of Incorporation so as to protect investors from management dilluting their shares. Shares of a stock are a companies fundamental ownership units. 

  

\subsubsection{Common Shares}

To assert voting control, they are broadly divided into voting rights.

\begin{itemize}

\item regular voting rights.

\item superior voting rights.

\item limited voting rights. 

\end{itemize}

  

\subsubsection{Preferred Shares}

They are like a "hybrid secutiry" because they behave like debt and equity. 

  

They are like equity because they represent ownership and must be paid their share if the company is sold. 

  

They are like debt because they can pay dividends although it may not be required. There are two further subdivisions: cumulative (remember skipped dividends) vs non-cumulative (forget skipped dividends).

  

Common shares may also have stipulated dividends but those all preferred shares must be paid their owned dividends first. 

  

Divident payments further divided into three types: \begin{itemize}

\item fixed rate, eg quarterly.

\item floating rate: pay according to a benchmark.

\item reset prefereds: mix. first fixed then after some time it "resets" to floating.

\end{itemize}

  

Additional preferred shares features: 

\begin{itemize}

\item convertible: convert to common. It's essentialyl a preferred share plus a call option. 

\item redeemable: the \textbf{company} can buy your shares back after some time.

\item retractable: the \textbf{holder/investor} can sell back his shares after some time (opposite of redeemable).

\begin{itemize}

\item hard retractable: issuer must give cash

\item soft retractable: issuer can give common shares as payment.

\end{itemize}

\end{itemize}

  

\subsection{Shareholder rights}

Shareholders vote to appoint the board of directors, the board then hires and supervises management.  

\begin{itemize}

\item Straight voting: each share is worth 1 vote. If a single shareholder has 51\% voting rights he controls the company as he can select the \textit{entire} board. 

\item  Cummulative voting: If there are $N$ seats on the board, each share carries $N$ votes. Shareholders can concentrate votes (ie put all of them on one person) and this way minority shareholders can secure some seats. 

\end{itemize}

\begin{definition}

\textbf{proxy} vote is granting your voting rights to someone else.

\end{definition}

  

\subsection{Debt}

Debt holders are not owners, they have no control over the company. They rely on the loan contract to protect their interest. 

  

Companies have \textit{incentive to issue more debt} because debt is \textbf{tax deductible.} On the other hand, dividends paid as a reult of raising equity are NOT tax deductible.

  

Both debt and equity have their pros. Debt is tax deductible, but if you have 100\% of your cash from debt then you are kind of bankrupted, so having equity favours legal status (ie keeps you alive).

  

In the event of bankrupcy, investors are paid in this order:

\begin{enumerate}

\item Debt (seniors then juniors)

\item shareholders (preferred then common)

\end{enumerate}

  

  

\section{Capital structure (M \& M Propositions)}

The value of a firm equals the value of its assets so it is equal to what it took to get them  ie its debt and equity (energy and balances are not created or destroyed, just transformed). 

\[ V = E + D \]

  

\textbf{The value of a firm equals the value of its assets} .So, this means that if I buy apple, they won't charge me the present value of future cashflows, ie say what they make monthly, they'll just give me the infrastrructure, personel, the machines, the patents, (the debt and equity? does this ratio change when a company is sold?) and a list of materials. Then it is up to me to buy the materials each month and make the sales. 

  

The questions is: does changing the debt to equity ratio change the value (or another metric we can then optimize for) of the company and what is the optimal ratio? 4 propositions: MM Propositions I and II with and without taxes.

  

Assume EMH and frictionless market (no transaction costs). 

  

\begin{definition}

\textbf{Financial leverage}: or financial gearing, getting something out of a bunch of promises and deals not out of cash right now. Leveragining your financials, moving stuff around. 

\end{definition}

  

\subsubsection{MM No taxes}

Frictionless environemtn where EMH holds and there are no taxes. 

  

M \& M says capital structure is independent of the  value of a company. The first doesn't add any value by changing its capital structure. The D/E ratio is irrelevant. The total size of the pie is unaffected by how th epie is sliced. 

  

Becoming levered means getting debt. 

  

\textbf{Proposition I: .}

  

Implications:

\begin{itemize}

\item Value of a levered firm = value of unlevered. $ V_L = V_U $.

\item Share price is constant (but risk does change with leverage that's proposition 2)

\item "WACC is constant."

\end{itemize}

Remember that in perpetuity PV =  $C/r$. The cashflows of a firm are their EBIT (pre interest and tax means we include both share and debt holders) and WACC is a firms cost of capital... apple can raise money with its eyes closed but your business probably can't. So, we have $PV = EBIT/WACC$

  

  

\textbf{Proposition II: }

Increasing leverage/debt:

\begin{itemize}

\item share price remains constant.

\item equity becomes more risky  $\implies$ cost of equity increases (volatility) $\implies$ return on equity increases (we expect higher returns for higher risk)

\end{itemize}

  

WACC is the cost of capital, how much it takes the company to raise capital from debt and equity combines. So, the return of our assets must be at least this for the company to make money. 

  

\[ r_L = r_U + \frac{D}{E}(r_U - r_D) \]

  

The variables are $(\frac{D}{E}, r_L)$ the debt to equity ratio vs the return on equity of a levered firm/return on assets. This $r_E$ is a function of the ratio. 

  

\begin{itemize}

\item $r_D$: the cost of debt is CONSTANT. 

\item $r_U = r_{WAAC}$: the cost of equity for an Unlevered firm equal to its WAAC. CONSTANT.

\item $r_L$: cost of equity for a levered firm

\end{itemize}

  

side note, $r_U =  r_{WACC}$ is a direct consequence of plugging in $D = 0$ into the WACC formula.

  

\textbf{Unlevered: No debt, financed 100\% by equity}. 

  

\textbf{WAAC:} How much it costs the firm to raise capital.

  

\subsection{MM with Taxes}

Debt is tax deductible so conclusions change. 

  

\textbf{Proposition I:} Firm value \textbf{increases} with financial leverage by the PV of the tax savings.

  

\textbf{Proposition II:} Same equation of a line on $(D/E, r_L)$ space than in the case without taxes but the slope is smaller as it is multiplied by $1-T_C$

  

\textit{debt lowers WACC and increases firm value}

  

\section{Limits to the use of debt}

MM with taxes says debt lowers WACC and increases firm value and yet 100\% debt $\implies$ bankrupcy. The key is that \textbf{the possibility of bankrupcy has a negative effect on the firms value}

  

direct costs of financial distress: lawyers. indirect: sales loses, \textbf{agency costs due to conflict of interests}. 

  

Example of \textbf{agency costs of debt}: debt and equity expected values for two different projects (probabilites on differnt outcomes). choosing the one which has higher equity but lower debt thus advantaging equity holders at the expense of bondholders. This suboptimal decision is an agency cost borne by debtholders. And it will be taken because bond holders don't have voting rights or control whatsoever in how the company is run. 

  

bondholders are obviously aware of agency costs due to shareholders. 

  

So, how to manage? Covenants.

  

covenants: debt terms and conditions.

positive covenants undertaken by company like insurring assets, min lvl of working capital, provide audited financial statements.

negative covenants are things the company CANT do: not pay a dividend, not issue more debt above a limit, don't share assets without paying bondholders. 

  

The point is that covenants are in the interest of the debtholders, so if they believe the covenants are enough to offset the agency costs, they may agree to lower the cost of debt, which benefits shareholders.

  

Second category are \textbf{agency costs of equity}: those borne by shareholders due to managements behaviour. 

  

How to manage? reduce free cashflow avaliable to management.

  

Free cashflow hypothesis: management is Michael Scott and wastes free cashflow. So upst the debt (get assets, buy off shareholders for increased control) so  as to divert more cash to that instead and away from Michael. 

  

Trade-off theory:

\textbf{We have some contradictions now, increase in debt brings tax shield advantage (good for firm value) BUUUT, it increases financial distress costs (bad)}

  

So what is the optimal $D/E$ ratio? Who knows. 

  

Some firms have their own target ratio, some use pecking order theory, which says that when cash is needed for investment look to get it in the following priorities:

\begin{enumerate}

\item Internal financing (do you have the money at hand?)

\item issue debt.

\item issue equity.

\end{enumerate}

  

So profitable firms use less debt. 

  

There is information asymmetry between management and sharehodlers. So investors try to read management through their decisions.

Pessimistic management? shareholders don't want more debt. 

Optimisitc? bring on the debt and tax shield advantage ... up to a point where financial distress brings firm value back down (parabola peak). This goes both ways, if management increases debt levels the market may take this as a sign that they are optimistic about the future. 

  

"signaling theory" trying to read management. 

  

\section{Capital budgeting for levered firms}

Two methods:

\begin{itemize}

\item Adjusted PV: $NPV_{unlevered} + PV_{financing}$ (financing refers to some annualized debt)

\item WACC: $NPV_{WACC} = C_0 + EBIT(1-T_C)/r_{WACC}$

\end{itemize}

  

\subsubsection{APV}

To caclulate the first term $NPV_{unlevered}$. Use initial cost and then annuity/perpetuity of cashflows formula. Remember to include taxes if necessary.  A perpetuity (goes on forever) is $EBIT*(1-T_C)/r_U$

  

Second term ($DT_C$ on formula sheet) is the \textbf{present value of financing}. If you borrow money now that is just $D * T_C$ 

  

USE APV when you know the debt value in dollars. 

  

Use WACC when you know the debt to equity ratio. this is then used to calulate the WACC. 

  

\section{Dividend}

A dividend is a distribution of earnings to shareholders. 

  

Dates in order:

\begin{itemize}

\item Declaration date: when the board decides to pay

\item Ex-dividend date: important. if you sell a stock on or after this date, you get the dividend.

\item Record date: when you know you're getting paid

\item Payment

\end{itemize}

  

In a perfect world, the stock price should \textbf{drop} by the dividend amount on ex-dividend date. 

  

In a frictionless economy, under EMH, and with fixed investment policy, a firm cannot increase value by changing dividend policy.

  

You can use the ex-dividend date to obtain your preferred cashflow patter, this is called "homemade dividend:" cashflows and dividednd policies by a  company are such that per share you get \$1 now and \$1.1 in a year. You have 100 shares but instead of [100, 110], you want to get 110, 990. The total is off but present values are fine (assuming 10\% interest). You just have to sell 10 shares ex-dividend, that way you get the \$ 100 from your 100 shares plus the 10 from the shares you sold NOW. and in a year from now you get the dividedn on your remaining shares. 

  

Investors are indiferent to dividend policy because they can \textit{undo or redo whatever dividend policy/pattern they prefer.}

  

Implications: Dividend policy ...

\begin{itemize}

\item doesnt change value

\item doesnt change stock prices

\item is a waste of management time

\end{itemize}

  

BUUUT companies do alter dividend policy. 

  

Clientele effect: if there is demand for high paying dividends, say from an increasing number of retirees who just want to upst their monthly income , change your policies and you'll drive up the stock price/raise equity.

  

\subsubsection{stock splits and repurchases}

shareholders receive additional shares instead of cash. 

Stock dividednds are expressed as percentages

Stock splits as ratios. 

Assuming EMH, the price per share will adjust. So why bother? well chaning the price of shares might be of interest if you want to keep them liquid. 

  

\subsubsection{stock repurchases}

Buy out Eduardo. If you don't sell and you buy out X amount of shares from Edu then you dillute his shares and you control more of the company. 

  

Dividends are viewed as commitments whereas repurchases are a one time decision. 

  

Shareholders can be whole corporations!!! In canada, corporations don't pay taxes on dividends received. So if tesla owns majority in apple, and musk owns tesla and through tesla a majority in the board at apple, he can move money from apple to tesla for free through dividends. 

  

\subsubsection{management bonuses}

Often a function of the stock price!

  

\subsubsection{free cash flow hyp}

paying dividends reduces cash thus reducing agency costs (ie yuo are not paying for Michael's parties, you are paying for your self interest as a shareholder.) 

  

\section{Options}

At the money, current stock price = strike price.

  

Intrinsic value: for in-the money options it is the payout. 

  

Time value: intrinsic value of the option minus market value

  

Bermudian options: can be exercised only at scpeified dates between now and maturity. 

  

Simple option strategy:

Protective put: buy the underlying stock along with a put. This is like stock insurance. Has the same shape as a call option but shifted upwards. 

  

\subsubsection{put-call parity}

RHS a protective put and LHS a call and then a risk free bond which pays K at maturity.

  

American options cannot be cheaper than european.

  

\subsection{Options and corporate finance}

The shareholders have effectively a call option on the firm with strike price of D. They make money if the firm does well.

  

Debt holders have the oposite view this reflects agency problems introduced earlier.

  

\section{Forwards}

The forward price is simply the compunded stock price t periods into the future. $F= S e^{rt}$

  

If dividends $F = (S-D) \times (1+r)^t$ where $D$ is \textbf{the PV of the dividend payments}.

  

if it says semi-annual, use 0.5 = t.

  

If we add additional carrying costs to a forward, like the cost of me keeping the goods for 1 year until you buy them (storage) and call it $q$, we got:

\[ F = S e^{r+q}t\]

  

Additional complications:

-  counterparty risks. can you trust their word to stand the test of time?

-uncertian dividends. dividends are not guaranteed. 

- uncertain carryin costs. need to forecast.

- uncertain interest rates

- conveneience yield: sometimes it is convenient to hold... like if you were stocked up on toilet paper or masks during covid.

  

\section{Utility Theory}

The expected value principle states that you should choose the investment with the highest expected value. but sometimes this is not good for choosing, so whatever you want to maximize and whichever way in which you want to do it can be customized into a utility function wich measures how much happiness you get out of something. 

  

Examples where expected value principle falls appart:

Consider insurance. Insurance providers sell insurance that has a positive expected value because they are running a business. So insurance sellers are buying a negative expected value product... why? cause it relaxes them

  

St. petersburg paradox.

infinite expected value. but if we have a concave function that models the law of diminishing returns, we have a solution and we can price the game. 

  

Utility theory:

instead of emasuring the monetary value of a gample, measure the level of atisfaction. \textbf{what matters to a decision maker is the utility of consuming money, not the monetary amount itself.}

  

Properties of utility function:

- increasing. the more the better. 

- decreasing marginal utility of wealth. concave.  if twice differentiable then u''<0

- instead of maximizing E[X], maximize utility E[u(X)]

- u(0)=0 no mooney no utility

  

loteries are random variables .. they have output space (payouts) and distributions. 

  

  

Axioms of cardinal utility: 

completness given two lotteries exactly one of strictly greater than or indiferent (3 outcomes is true.)

transitivity

  

continuity. 

 utility unique up to an afficne transformation.

Theorem: 

  

  

  

  

  

  

  

  

  

  

  

  

  

  

  

  

\end{document}