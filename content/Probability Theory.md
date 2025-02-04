
We want to formalize the assignment of probabilities to events in a sample space. 

We will now introduce $\sigma-$*algebras* as the structure used to formalize events in a sample space; events to which we can assign a "probability" or "measure."

## Algebras 
Let $\Omega$ be our sample space. We are interested in assigning a measre to any and all possible events 'generated' by this sample space that we may be interested in. An initial attempt is to consider the power set $\mathcal{P}(\Omega)$ which is the set of all subsets of $\Omega$. 

For instance, in an experiment in which we throw a three sided die, we have:

$\Omega = \{1,2,3\}$

$P(\Omega) = \{ \emptyset, \{1\}, \{2\}, \{3\}, \{ 1,2 \}, \{ 1, 3\}, \{2,3\}, \{1,2,3\}  \}$


We are trying to formalize probability, so the idea of this \textit{first attempt} at it is to ask probability questions on $\Omega$ as questions regarding subsets of $\mathcal{P}(\Omega)$. For instance if we let X be the RV representing the side of the die, the event $(X=3)$ could be formalized as $X \in \{3\}$. This extends to more complex events such as $(X=1)\cup (X=2)$ translates to $X \in \{1,2\}$ .

So is a sigma algebra exactly the same as a power-set? well no, it is an abstraction of a power-set. This becomes increasingly important in continuous domains in which, because of the infinitudes hiding in (continous sets)? , we cannot assign a measure/probability to every  member of the power-set less we introduce inconsistencies like the [[Banach–Tarski  paradox]].

 The power set is too general and too large}, so we restrict ourselves to the events given by a subset $\mathcal{A}$ of the powerset which satisfies some properties. This subset is called an *algebra*.

### Definition:
A subset of the power set $\mathcal{A} \subset \mathcal{P}(\Omega)$ is an **algebra** if: 

 \end{definition}

 \begin{enumerate}

 \item $\Omega \in \mathcal{A}$

 \item $A, B \in \mathcal{A} \implies A \cup B \in \mathbb{A}$

 \item $A \in \mathcal{A} \implies A^c = \Omega - A \in \mathcal{A}$

 \end{enumerate}

 \begin{corollary}

 If $\mathcal{A}$ is an algebra, then $A, B \in \mathcal{A} \implies A \cap B$.

 \end{corollary}

 \textit{Proof:} Using properties (2) and (3), $A,B \in \mathcal{A} \implies A^c, B^c \in \mathcal{A}$ so $A^c \cup B^c = (A \cap B)^c \in \mathcal{A}$ and since its compliment must also be in the algebra we have our result. 

  

\textbf{Questioning definitions:}

The power set is obviously an algebra. it contains the emptyset and the sample space set and all of its elements have their complements in it too. $\mathcal{P}$ is the largest algebra. So why do we bother with the definition of an algebra? because we are interested in the smaller algebras that live as subsets of $\mathcal{P}$ to have our theory work on the smaller conditional and other universes. \textbf{I THINK}. 

  

We now consider sigma algebras which are similar structures with a key difference which makes them fit for probability. This difference is in property (2); in the sigma algebra we extend property (2) to  the \textit{countably infinite} union of events.

  

\begin{definition}

$\mathcal{F} \subset P(\Omega)$ is a $\sigma-$algebra if the following hold:

\end{definition}

\begin{itemize}

\item $\Omega \in \mathcal{F}$

\item $\forall A_1, A_2, \dots \in \mathbb{F}$, we have: $ \bigcup A_n \in \mathcal{F}$

\item $A \in \mathcal{F} \implies A^c \in \mathcal{F}$

\end{itemize}

  

\begin{definition}

The pair $(\Omega, \mathcal{F})$ is called a \textbf{measurable space}. This is the pair on which measures will live. 

\end{definition}

  

\subsection{Measures}

We'd like to formally assign probabilites to elements of our sigma fields. To do this we will make use of measures.

  

\begin{definition}

Let $\mathcal{A}$ be an algebra, $ \mu : \mathcal{A} \rightarrow [0, \infty]$ is a \textbf{finitely additive measure} on $\mathcal{A}$ if $\forall A, B \in \mathcal{A}$ disjoint, with  $A \cap B = \emptyset$, we have $\mu (A \cup B) = \mu (A) + \mu(B)$. 

\end{definition}

  

Furthermore, $\forall A_1, A_2, \dots, A_n \in \mathcal{A} : \bigcup_{i=1}^n A_i \in \mathcal{A} $ If the union is \textit{disjoint} then the joint finitely additive measure is just a summation of the marginal measures:

\[ A_i \cap A_j = \emptyset, 1 \leq i \neq j \leq n \implies \mu(\bigcup_{i=1}^n A_i) = \sum_{i=1}^n \mu(A_i)

\]

  
This is still not good enough fro probability, it's too simple and it does not restrict the assigned measures to be in $[0,1]$

  

Let's generalize: 




A \textbf{measure} $\mu$ on an algebra $\mathcal{A} $ is a set function $\mu: \mathcal{A} \rightarrow [0,\infty]$ with the extension of finitely additive measures to include countably infinite events, ie. If $\forall A_1, A_2, \dots \in \mathcal{A}$ or $\forall A_1, A_2, \dots A_n \in \mathcal{A}$ such that $\bigcup A_i \in \mathcal{A}$ and $A_i \cap A_j = \emptyset$ if $i \neq j$, then the measure is additive: $\mu(\bigcup A_i) = \sum \mu(A_i)$


  

What is the fuss about measures on sigma algebras over measures on algebras? well in the regular algebras the union of any finitely many sets is still in the algebra BUT if there are infinitely many sets in an algebra there is no guarantee that the union of infinitely many things is still in the algebra. We do have this guarantee in the case of a sigma algebra. The union will be in the algebra and so we can have an "additive" measure. A $\sigma-$algebra is a more restrictive thing.  \\

  

If a measure has range $[0,1]$, then it is called a \textbf{probability measure.} \\ 

  

So if $\mu(\Omega) = 1$ and $\mu$ is a measure, then $\mu$ is a probability measure; A measure with "total mass one." \\

  

  