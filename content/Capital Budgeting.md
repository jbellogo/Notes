
Financial markets exist so companies and individuals can adjust **consumption** across time periods. And so, they provide instruments that facilitate borrowing and lending.

Investors can invest directly into them or via third parties called [financial intermediaries] which grant them flexibility. 

In a company: Equity = Assets - Liabilities. 

Liabilities: Future debt 

Owner's Equity: What the owners would get if they sold the company. 


## Financial intermediation: 

* Size intermediation: banks combine investments of many small investors into large loans for a few borrowers. 
* Term intermediation: take from short term lenders (savings account) and re-lend to long term borrowers (mortgages).
* Risk Intermediation. Intermediaries can assume the excess risk and protect borrower, ex. hedge-funds investing into crypto, Le'Chiffre (Casino Royal villain) gambling  away his customer's money)

## Capital Project. 
Sequence of cashflows spread over time. Ex, a rent agreement 'project' will incur 2k monthyl for 1 year.   

To evaluate and compare projects we can use several rules like [[NPV]], 

In order to assess the worthiness of a project, we need to understand its cashflows, specifically: 
• Amount: how much cash is transacted?
• Timing: when does the transaction happen?
• Direction: who is the payer and who is the recipient?
• Likelihood: is the transaction surely to happen or somewhat uncertain? This takes us into [[Expected Value]] cashflows, which are single numbers that encode different probabilistic outcomes.

The project cashflows include initial cost when purchased (material asssets), and salvage value when fixed assets are sold (inflow) (sale used trucks, machinery, patents, etc at the end.)


## Capital Budgeting
The decision-making process for accepting or rejecting new projects/investments. This is obviously an indicator function of the sequence of expected cashflows.

What cashflows to include in analysis?
* **Net incremental cashflows only**, that is, cashflows that occur exclusiveley due to acceptance of the project (not the cost of toilet paper in the office). 

We exclude:
*  sunk costs: costs that occurred in the past. 
*  depreciation
*  goodwill: extra profit paid by other parties.
*  unearned capital gains: appreciation of assets (taxable).
  
We include: 
* Opportunity costs: cashflows that would have happened if the project were not accepted. ie if Rocky Balboa doesn't fight and decides to wash cars instead, he will get a car-washing salary but at the same time give up the opportunity and money that comes from fighting. 

#### OCF formulas

Operating Cash Flows (OCF): inflows and outflows related to business activity. 

Earnings before interest and taxes (EBIT)

* $OCF = EBIT - Taxes + Depreciation$

* $EBIT =  Revenue - Cost - Depreciation$

* $Taxes = EBIT \times Cotporate Tax Rate = EBIT  \times T_C$

OCF is independent of depreciation (it ends up cancelling in formula) because, intuitiveley, depreciation as an accounting concept to allocate the initial cost of the product over time, and not a cash cost. 
  
NOTE:
* *Capital cost*: initial costs. 
* *Cost of capital*: rate of return. 


## Decision making rules

### NPV
For [[Capital Budgeting]], a project is considered good if NPV > 0. This implies the project is better than [[Interest]] borrowing and lending in the market. 

$\text{NPV} > 0 \iff \text{increase in company value} \iff \text{increase in shareholder value}$

**Pros**
* Takes [[Time Value of Money]] into consideration, discounts all cashflows. 
* Easy to evaluate NPV for combinations of projects. 
* Can be applied to any weird pattern of cashflows. 

**Cons** 
* In practice, cashflows must be [forecasted](Forecasting), and as we know, the reliability of a forecast is based on how much prior previouss data is avaliable. 
	* Interesting scenario: Jake Paul vs Mike Tyson's boxing match hosted by Netflix. From a Capital budgeting's perspective, Netflix does not have PPV events, so its cashflows are, assumably, mostly made up of subscriptions. How do they decide to spend so much money on this even, or even a new show/movie? I believe they forecast the theoretical number of new views and maybe even subscriptions this could bring.  

* What should the discount rate be? If you are lending you want it as high as possible, but whats as high as this number can get before you start loosing money to the competition?

-  Doesn't take into consideration size of project, maybe selling lemonade costs 5 to set up and produces 10 in one day. Similarly, a big project can cost 500 and give back 505 the next day. 

*  Doesn't take into consideration required projects, or projects with a different *time horizon*, like a choice between two required insurance plans. 


### Equivalent Annual Cost

Used when NPV misses the point. EACs spread the NPV of different projects to each year in a "financially equivalent way" This is usually done when projects have different time horizons, or when they incur a negative cash flow, which might be the case with required projects like 'buying protective equipment or insurance.'

### Payback Period Rule

Measures how long it takes to "payback" the initial investment of a project.
* easy
* gives you a measure of liquidity. 

Cons:
* Ignores TVM
* Ignores all cashflows after the payback period
* What is the comparison rule? is a payback period of 4 years good? ambiguity.

so in terms of comparing projects, this only does one thing right: give a measure of liquidity. 

### Discounted payback period rule

Number of periods in the future when the cummulative discounted cash flows total the initial investment. 

Pros:
* Gives a measure of liquidity. 
* Doesn't ignore TVM

Cons:
* Ignores all cashflows after the payback period
* Ambiguity of comparison rule

### Internal Rate of Return

Cost of capital: minimum RATE OF RETURN ("cost") needed to justify the "capital" needed to undertake a project.

Cost of capital such that the NPV of a project is 0
  
Rule: Accept a project if IRR > required rate of return. This "required rate of return" 

   
$PI = \frac{\text{PV of future cashflows}}{{Initial cost}} = \frac{\sum_{t=1}^{\infty}\frac{C_t}{(1+r)^t}}{-C_0} = \frac{C_1 + C_2 + \dots}{|C_0|}$


A project has $PI > 1$ exactly when $NPV > 0$. Convince yourself: Well just look at it mathematically, $ 0  < NPV = C_0 + C_1 + \dots \implies C_1 + C_2 + C_3 + \dots > -C_0$ and thus the nominator of the Profitability index calculator is bigger than the denominator, thus $PI>1$. 

Interpretation: $PI = 1.2$ means that the future cashflows are 20\% larger than the cost of the principal investment. So "loosely speaking," the project generates a 20\% excess return over its life. 

PROS:easy and correct for independent projects 

CONS: Scale. Maybe we don't care about percentage returns and only about absolute returns. 

  

## Depreciation
### Capital Cost Allowance

In Canada, depreciation is NOT tax deductible. Instead the CRA allows a Capital Cost (initial investment) Allowance which provides a "tax-shield" which reduces EBIT and thus taxes.  


Every year, the undepreciated capital cost (UCC) is reduced by the CCA rate which depends on the class of the asset at hand (ie $10, 10*(1-r), 10*(1-r)^2$), for instance cars may have a CCA rate higher than warehouses. 

And from that UCC we take a tax rate to get the actual tax shield amount: amount to be deducted from EBIT.  
  

PVCCATS : Present Value of Capital Cost Allowance Tax shield.

The CCA tax shields must be calculated in nominal terms, since once the asset is purchased, the entire CCA table is determined REGARDLESS of future inflation. 

  
# Inflation

$(1+Nominal) = (1+ Real) \times (1+Inflation)$

