---
aliases:
  - graph
---
This is about the [[Data Structures|Data Structure]]
See also [[Graph Theory]]

# Implementations: 

Trivial:  Edge and Vertex set. Only for abstrract mathematical formualtions and proofs, treating them as sets. This implemention is awful in practice because there is no way to determine neighbours in constant time, which is something most graph algorithms do

# Adjacency list
Best for most use-cases 

Symmetric matrix
```c++
adj[1].push_back(2);
adj[2].push_back(1);
```


## Directed graphs 
Also use an an adj list, but when constructing it, don't add a two way, symetric relationship. ie for edge from node 1 to node 2, youll just do:
```c++
adj[1]push_back(2)
```


## Graph Algorithms

Graph Traversal Algorithms: 
- [[Depth-First Search]]
- [[Breadth-First Search]]

Shortest path Algorithm: 
* [[Dijkstra's Algorithm]]

Minimum spanning trees: 
- [[Prim's Algorithm]]


