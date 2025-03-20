---
aliases:
  - bfs
  - breadth-first-search
  - level order traversal
---

Breadth-First Search is a [[Graph Traversal Techniques]], as such it also easily applied to trees. 

# Algorithm: 

```
BFS(r, Adj):
	level = {r : null}
	parent = {s : null}
	i = 1
	frontier = [s];
	while (frontier):
		next = [];
		for u in frontier:
			for v in Adj[u]:
				if v not in level:
					level[v] = i;
					parent[v] = u;
					next.append(v);
		frontier = next;
		i++;
```


Resources: 
# Implementation 
Use a queue to store the frontier. 

```cpp
int rangeSumBST(TreeNode* root, int low, int high) {
	queue<TreeNode*> q;
	q.push(root);


	while (!q.empty()) {
	
		TreeNode* current = q.front();
		
		if (current != nullptr) {
			TreeNode* left = current->left;
			TreeNode* right = current->right;		

			/*
			visiting logic, queuing logic
			*/
		
			q.push(left) 
			q.push(right)
		}
		q.pop();
	}
	return sum;	
}
```

sometimes in the visiting logic you may choose *not* to visit a particular child. 

Here's an example of a *visiting logic*, where we make use of the sorted property of the tree, where we enqueue a child only if its subsequent children have the potential to be in a specified range $[low,high]$

```c++
...
if (low <= val && val <= high){
	// enqueue both children
	q.push(left);
	q.push(right);
	sum += val;
} else if (val < low){
	// only enqueue the right child
	q.push(right);

} else if (val > high){
	// check the left child
	q.push(left);
}
...
```


If you want an implementation capable of keeping track of the levels and frontiers, you can still use the priority queue but add a forloop inside of it to process children from the entire level at a time.
```cpp
void BFS(TreeNode* root) {

	queue<TreeNode*>q;
	
	q.push(root);
	
	TreeNode* temp;
	
	while(!q.empty()){
	
		vector<int>level;
		
		for(int i = 0 ; i<q.size() ; i++){
			temp = q.front();
			q.pop();
		
			if(temp->right){
				q.push(temp->right);	
			}
		
		if(temp->left){
			q.push(temp->left);
		}
		
	}
		
}
```