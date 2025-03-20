Depth First Search 

Also a [[Graph Traversal Techniques]]. 

Uses:
* It can tell you if a vertex is unreachable, can be modified to find all maximally connected components of a graph. 
* It can detect cycles. 

Pseudocode
```cpp
// Let s be node names 
map<int, int> parent = {s : NULL};
void dfs_visit(vector<vector <int>> &Adj, int s){
	for v in Adj[s]:
		if v not in parent:
			parent[v] = s;
			dfs_visit(Adj, v);   // Recursive step
}

void dfs(adj, int s) {
	map<int, int> parent = {};
	// Used to determine connected components.
	for s in Adj[v]:
		if (s not in parent) {
			parent[s] = NULL;
		}
}


```