---
aliases:
  - DFS
  - depth-first-search
---
[[Searching Algorithms]]

Goes DEEP into one children at a time  before going broad, to all children. 


It is a natural way to construct paths as it is a [[Recursion|recursive]] method. 

Also a [[Graph Traversal Techniques]]. 

Uses:
* It can tell you if a vertex is unreachable, can be modified to find all maximally connected components of a graph. 
* It can detect cycles. 

Pseudocode
```cpp
// Let s be node names 
void dfs_visit(vector<vector<int>> &adj, int root, vector<int> &parents){
	for (auto &v : adj[root]){
		if (parents[v] == -1){
			parents[v] = root;		
			dfs_visit(adj, v, parents);
		}
	}
}

// WRAPPER
void dfs(vector<vector<int>> &adj, int n) {
	// root defaults to 0
	vector<int> parents(n, -1);
	// This is used to be able to explore disconnected components
	for (int i = 0; i < n; i++){
		if (parents[i] == -1) {
			// visit with i as the root
			parents[i] = -2;
			dfs_visit(adj, i, parents)
		}
}
```


# Cycle detection 

You need to add the concept of 'Rank' or level, the depth at which you are. 


## Reductions
A really cool problem reduction is the connected-cells probelm, which is basically about running it on a matrix of ones and zeroes to find islands of ones, as this is the same as finding connected componetns.