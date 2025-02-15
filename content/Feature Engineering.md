If we have a categorical variable, we **must** perform one hot encoding, because even though it takes on numbers on a given range, they might as well be variable names, the don't cary the subsequent properties and scale of numbers. 

Variate: transportation to school with Categories:
"1" := WALK
"2" := BIKE 
"3" := BUS

Numbers have the methods >, <, = defined, but our category only has =. 

- 2>1 dosn't hold for the categories "BIKE" > "WALK"  makes no sense. 
At least this is the intuitive thing, it is true that sometimes models work with very litlle feature engineering. 

Real world stochastics sometimes have that flavour:

* It is like sweeping without looking, you will randomly catch some dust. 
* It is like a goldfish picking stocks to buy and the portfolio making money.
These are just random instantiations of stochastic processes. 