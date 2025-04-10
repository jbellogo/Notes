How runtime of algorithms scales with respect to a measure of some input variable.

Rules: 
1. Non-intersecting steps get their complexities added
2. Drop constants
3. Nested steps get multiplied.
4. Different inputs-> different variabls O(E x V) is not O(E^2)



You say " algorithm X is linear on the input"

Key terms in the definition are [[Measure Theory|measure]]: If i am trying to describe how long it takes to mow the lawn in a a plot of land, we have:
- the plot of land is the variable 
- possible measures for area are :
	- area in m^2, A O(A)
	- area as a product of length x width  O(L*W)
In both cases, my runtime is differnt:
- linear in the area, but a product in the width, length input

# THEORETICAL PERFORMANCE

## Constant 
O(1)

Pigeons carry data in linear time, assuming data is confined to a single usb stick. So its data trasnfer speed is constant.

## Logarithmic
* Binart search on a sorted array 
* Operations on balanced binary search trees. 

## Linear

In general, If you must touch every element in an array, you will have linear time. 
- finding a extrema in an unsorted array:


## Linearitmic
$O(n  \times \log(n))$
This is the complexity of efficient sorting algorithms 
- Merge sort 
- Quick sort 
- Heap sort

## Polynomial
Usually attained by nested for loops. They are a god way to come up with quick brute force solutions that consider the whole sample space of all possible inputs.

### quadratic
Bubble sort

### cubic 
Naive matrix multiplication 


## Exponential time 
With a base 2, when time *doubles* with each additional input element. Some recursive algorothms. 

Remember that in [[Combinatorics]], a singular expression, series of coefficients can count different things/processes and what's more there is always a bijection ebtween them. So if something is exponential time $O(2^n)$, the task can be mapped to subset selection. (yes or No for each element)


## Factorial time 
Generating all permuations, combinations (n choose k is reduced to factorial time)


# REAL WORLD PERFORMANCE

It is not just about the algorithm. it's also abbout the hardware. 

* Caching, maximizing cache hits is often more impactful
	* Also plays a role in implementation:
		* consider iterating through elements in an $n \times m$ matrix. If you start the outerloop with rows or columns makes no theoretical diference, but there is a key practical difference, acessing rows follows the natural way in which information is stored, sequentially, in memory, so it is actually faster. 
		* Linked list vs Array: Both have a lienear time complexity for traversal, but array outperform linked lists due to cache locality, nodes in a linked list may not be stored in sequential memory addresses, and so accessing them, is 'physically' more demanding. Imagine a room with rows of lockers. If you have five things in five lokers, seeing all of them will take you opening them 5, but their physical location and proximity to each other will also make the task easier for you, well computers aint magic, nodes are created with the 'new' keyword so they are stored at pseudorandom locations, ergo your cpu has to run around the room of lockers to retrieve them all. Formally
			* Array elements are contiguous in memory
			* Linked list nodes can be scattered in memory.

* memory usage
* hardware specs


# Time complexity 


# Space complexity 

>[!quote]
>If I were to give you chucnk of memory to run your program, how long does it have to be?

An [[👨🏻‍💻 Algorithms|algorithm]] performance metric. 

Comes from any memory you use, includes things like:
- arrays, structures
- call stack, how many times you call a function.









