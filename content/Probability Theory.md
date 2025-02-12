
We want to formalize the assignment of probabilities to events in a sample space. 

Roadmap:
1. Introduce $\sigma-$*algebras* as the structure used to formalize events in a sample space; events to which we can assign a "probability."
2. Define [[Probability Theory#Probability Measures|probability measures]] to assign probabilities to those events 
## Sigma Fields 

### Definition

$\mathcal{F} \subset P(\Omega)$ is a $\sigma-\text{field}$ if the following hold:
*  $\Omega \in \mathcal{F}$ (Contains the empty set)
*  $A \in \mathcal{F} \implies A^c \in \mathcal{F}$ (Closed under relative complements)
* $(\forall j \in \mathbb{N})[ A_j  \in \mathcal{F}] \rightarrow \cup_{j \in \mathbb{N}} A_j \in \mathcal{F}$ (Closed under countable unions)

### Motivation

> *The basis for probability will be the assignment of numerical probability values to certain subsets of a sample space. We will demand some relationships hold between set operations on those subsets and the corresponding probability values we assign*

Let $\Omega$ be our sample space. loosely speaking, it contains things that can happen in a single trial of an experiment. 

If we are throwing a 3 sided die: $\Omega = \{1,2,3\}$

On this sample space we want to be able to ask questions about the outcomes of a *singular trial*. Using the [[random variable]] $X : \Omega \rightarrow \mathbb{R}$

* What is the probability that the first throw is 1? 
* What is the probability the first throw is nothing?
* What is the probability the first throw is 3 OR 1?
* What is the probability the first thro is 1 OR 2 OR 3?

These questions correspond to assigning the following probability measures to subsets of $\Omega$ respectively
 * $P(X=1)$ 
 * $P(X=\emptyset)$ 
 * $P(X \in \{1, 2\})$ 
 * $P(X \in \Omega \not \{ \emptyset \})$ 

On just $\Omega^1$, we cannot ask "AND" questions, as that sample space is $\Omega^2$


An initial attempt to answer the first underlying question is to consider the power set $\mathcal{P}(\Omega)$ which is the set of all subsets of $\Omega$. 

For our example above:
$$\mathcal{P}(\Omega) = \{ \emptyset, \{1\}, \{2\},\{3\},\{1,2\},\{1,3\},\{2,3\}, \{1,2,3\} \}$$

It feels like any question we can pose on a single trial of our "tossing a three sided die once" experiment can be phrased by asking about the measure assigned to every element in this power set, at least without worrying about how to formalize that assignment for now. 

### The problem with power sets
The problem is that a power set is not abstract enough for our purposes. It happens to work for discrete sample spaces, but what about continuous regions?   

 In a continuous sample space, we cannot assign a non-zero probability measure to every  region in $2^\Omega$ less we introduce inconsistencies like the [[Banach–Tarski  paradox]].

 The power set is too general and too large, so we restrict our attention to a selected few subsets which satisfies some properties. 



# Measurable Space
The pair $(\Omega, \mathcal{F})$ is called a measurable space, where $\Omega$ is a set and $\mathcal{F}$ is its [[#canonical sigma-field]]. 

In the context of probability theory, $\Omega$ is called the [[sample space]], $\mathcal{F}$ is called the collection of all events, and an $A \in \mathcal{F}$is called an event

## Sample Spaces
> The interpretation of a sample space $\Omega$, is that it represents the set of possible outcomes for some experiment. Often we assume that our sample space keeps track of more things than we actually care about. We can think of the sample space as representing how the whole universe unfolds, and from that we can deduce what we care about regarding our experiment. We will construct probability theory in a way that tracking extra irrelevant information does not affect the answers we would derive for questions we care about. *Thus, coming up with different sample spaces for the same experiments is fine, and sometimes even helpful!*

### Examples

3. If our experiment is “flipping a coin and recording the whether it came up heads or tails” then the sample space might be 
$$Ω = \{H, T\}$$

4. If our experiment is “flipping a coin 100 times and recording the whether it came up heads or tails” each time then the sample space might be:
$$\Omega = \{H, T\}^{100}$$

5. If we are ultimately interested in the outcome of a single coin flip, we could use the sample space $Ω = \{H, T\}$ where the outcome we care about is the only thing one could deduce from the sample space, or we could use the sample space $\Omega = \{H, T\}^{100}$ where the outcome we care about can be deduced from the first of the 100 flips via the projection function $π_1 : \{H, T\}^{100} \rightarrow \{H, T\}$ that maps a tuple of length 100 to its first component: $π_1(ω) = ω_1$, effectively throwing away other irrelevant information. Similar projection functions can be used when discussing [[Stochastic Processes#Discrete|discrete stochastic processes]].
<br>
6. Similarly, if we are interested in the result of flipping a coin 100 times and then counting the number of H, we could either choose our sample space to record the outcome of every flip, $\Omega = \{H, T\}^{100}$, and then reason about the quantity we care about via a [[Random Variable|random variable]] $X : \Omega \rightarrow \{0, 1, . . . , 100\}$ given by $X(\omega) = \sum_{i=1}^{100} \mathbb{1}_{ω_i=H}$, or, perhaps *more efficiently*, we could choose our sample space to be $\Omega = \{0, . . . , 100\}$ to directly record the count.
<br>
7. If our experiment is “rolling a 6-sided die and recording the number on the top face as well as the air temperature, the number of people in the room and the colour of the person on our right’s shirt” then the sample space might be:
$$Ω = \{ \{1, 2, 3, 4, 5, 6\} × \mathbb{R} × \mathbb{N} × \{red, blue, green, \dots\} \}$$

So, it seems like a sample space $\Omega_1$ is “at least as general” as another sample space $\Omega_2$
describing the same experiment if there is a suitable surjective function from $\Omega_1 → \Omega_2$.
Examples of such functions we’ve seen so far include projections onto components of a tuple, and aggregation of the values of components of a tuple.

# Probability Measures
Recall a [[Probability Theory#Measurable Space| measurable space]] consists of $(\Omega, \mathcal{F})$ 

We'd like to formally assign probabilities to elements of our sigma fields. To do this we will make use of [[Measure Theory|measures]].

There are a number of things we want out of a probability measure:
* Additivity 
* Add up to 1


Let $\mathcal{A}$ be an algebra, $\mu : \mathcal{A} \rightarrow [0, \infty]$ is a *finitely additive measure* on $\mathcal{A}$ if $\forall A, B \in \mathcal{A}$ disjoint, with  $A \cap B = \emptyset$, we have $\mu (A \cup B) = \mu (A) + \mu(B)$. 


A \textbf{measure} $\mu$ on an algebra $\mathcal{A} $ is a set function $\mu: \mathcal{A} \rightarrow [0,\infty]$ with the extension of finitely additive measures to include countably infinite events, ie. If $\forall A_1, A_2, \dots \in \mathcal{A}$ or $\forall A_1, A_2, \dots A_n \in \mathcal{A}$ such that $\bigcup A_i \in \mathcal{A}$ and $A_i \cap A_j = \emptyset$ if $i \neq j$, then the measure is additive: $\mu(\bigcup A_i) = \sum \mu(A_i)$
  

What is the fuss about measures on sigma algebras over measures on algebras? well in the regular algebras the union of any finitely many sets is still in the algebra BUT if there are infinitely many sets in an algebra there is no guarantee that the union of infinitely many things is still in the algebra. We do have this guarantee in the case of a sigma algebra. The union will be in the algebra and so we can have an "additive" measure. A $\sigma-$algebra is a more restrictive thing.  
  
  
So if $\mu(\Omega) = 1$ and $\mu$ is a measure, then $\mu$ is a probability measure; A measure with "total mass one."

  

  