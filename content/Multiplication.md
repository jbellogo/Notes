> [!info] Info
> *Decimal multiplication tricks for quick maths* 

# Bracket notation
Let the square brackets represent in-place decimal expansion such that 
$$[1][2][3] =123 = 1*10^2+ 2*10^1+3*10^0$$
For simplicity, let this notation allow any number greater than 9 in a brackets, and define it to mean the familiar: "leave the remainder in-place, carry the quotient to the left. 
$$1[72][33] = [1+7][2+3][3]853$$
Note: this extends seamlessly to quotients of an number of decimal digits, in this example we are adding a quotiont of size $10$ to the $[43]$
$$[43][99][99] = [43][99+9][9] = 43[108][9]=[43+10][8][9] = 5389$$

# Sub 12 multiplier
## Times 4
Double then double again. Or if its easy do it directly times 4. 

$23234*4 =46468*2= 92936$

## Times 5
Double then times 10
$5*9348 = 4674*10= 46,740$

## Times 6
When you multiply 6 times an even number, they will end in the same number. 
$534*6 = 3000+180+24 = 3204$  

## Times 9
Single digit:
You don't even need to say the number outloud.
$a \in [0-9]*9 = [a-1][10-a]$


## Times 11 
Multiplying any two digit number times 11 is easy:


$$93*11 = [9+Q(9+3)][R(9+3)]3$$ 
Where: 
* $Q(a,b)$ is the quotient of $\frac{a+b}{10}$
* $R(a,b)$ is the remained of $\frac{a+b}{10}$

Multiply times a three digit number is also the same idea: 
$$793*11 = [7][7+9][9+3][3] = 8723$$ Where we keep the remainder in place and shift the quotient one place to the left. 

## Times 12
$$a*(12) = a*10+a*2$$

# Multiplying Teens*
$13*15 = [13+5][3*5] = 18[15]=195$
We have $[ab]*[cd] = [ab+d][b*d]_{10}$
We will add the last digit of the secondary number to the primary number for the first two position. For the third position, multiply the last two digits and take remainder 10. 

>[!example] Examples
> $19*18=[1][9+8][9*8] = 27[72]= 342$
>$15*13 = [1][5+3][5*3]=[1][8][15] = [1][9][5]=195$


This is a direct result of the following expansion: 
When we multiply two teens we have the following for $3 \leq a,b \leq 9$
$$(10+a)*(10+b) = 10^2+(a+b)*10 +a*b$$
This immediatly tells us our answer will have the following form:
$$[1][a+b]_{10}[a*b]_{10}$$

And of course, we add the quotients. mod ten to the position to the left. 

> [!warning]
> Note that anything multiplied by 19 is more easily computed as follows:
> $$a * 19 = a*20-a$$  
> **Examples**:
> * $4324363*19 = 86,487,260 - 4,324,363 = 82,162,897$
> * $15*19= 300-15=285$


# Two digit numbers multiplied
This actually extends to multiplying any two digit numbers together: 

$$[ab]*[cd] = [a*c][a*d+b*c][b*d]$$

As for $0<a,b,c,d \leq 9$:

$$(a*10+b)(c*10+d) = a*c*10^2+[a*d+b*c]*10+c*d$$

>[!examples]
> * $37*76=21[3*6+7*7][7*6]=21[67][42]=28[1][2]=2812$
>* $53*93=45[27+15][9]=49[2][9]=4929$
>* $44* 46=16[24+16][24] = 16[42][4] = 2024$


##  Special format \[a\]\[b\]\*\[a\]\[10-b\]

In english: Matching first numbers and second numbers adding up to 10.

The trick:

$$a(a+1)\times 10^2 + b(10-b)\times10$$

This implies:

$$[a][b]*[a][10-b] = [a*(a+1)][][b * (10-b)]$$

The [] in the middle is to stay consistent with our made up notation, there are no carry forwards, just write down the exact numbers at their corresponding positions

***Proof:***

$$
\begin{align}
(a*10+b)*(a*10+(10-b)) &= (10a+b)(10(a+1)-b) \\
&= a(a+1)\times 10^2 + b(a+1)\times10-ab\times10 - b^2 \\ 
&= a(a+1)\times 10^2 + b\times10 - b^2 \\ 
&= a(a+1)\times 10^2 + b(10-b)\times10 \\ 
\end{align}
$$
> [!examples]
> $95*95 = 9025 = 9025$
> $74*76 = [7*8][][24]= [56][2][4] 5624$


# Three digit numbers multiplied

We are going to follow the following pattern, resulting in five of our inplace brackets \[\]
![[Pasted image 20250215170106.png]]
Exemplified as follows:
![[Pasted image 20250215170033.png]]

>[!examples]
> $$348*579=[3*5][3*7+5*4][3*9+4*7+8*5][7*8+4*9][8*9]= [15][41][95][92][72]=[20][1][4][9][2] = 201,492$$
>

>[!warning] Warning
> Since we are dealing with inplace numbers that can exceed 100 in our [#bracket notation
>, the quotient has two digits, we pass it to the second remainder to the left of the current place. Or just pass ist as it is, as a 10 to the first remainder to the left and this will force you to pass it as a 1 to the next remainder. 
>
