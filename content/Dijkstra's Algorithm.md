[[Breadth-First Search]] based [[Greedy Algorithms]]

It is greedy because it makes the best possible choice at each point. 

It determines the shortest path from a given root to every other node in the  graph 


```cpp
vector<int> djikstra(int r, vector<vector<int>> &adj) {

	// COMPUTES SHORTEST PATH DISTANCES FROM r to all other vertices.
	
	// Current shortest path distances initialized to +INFINITY except for root
	vector<int> dist(n, INT_MAX);
	dist[r] = 0;


	// Min heap priority queue to hold unexplored frontier, bfs style
	priority_queue< iPair, vector <iPair> , greater<iPair> > pq;
	
	// Note, to avoid having to implement your own comparator, use greater<iPair>,
	
	// it will compare the first elements of the template T, which in this case is the first of the iPair.
	
	// @IMPORTANT: So we need to reverse orders and store WEIGHTS FIRST and u vertices second
	
	// STP distance from root is initialized to 0
	pq.push(make_pair(0, r)); // (weight, vtx)
	
	while (!pq.empty()) {
		// u is source vertex
		int u = pq.top().second; // second is the vtx, first is the weight (enables us to use default comparator)
		pq.pop();
		
		for (auto &[v, uv_weight] : adj[u]) {
		// If there is shorter path to v through u.
			if (dist[v] > dist[u] + uv_weight) {			
				// Updating distance of v
				dist[v] = dist[u] + uv_weight;
				pq.push(make_pair(dist[v], v));
				// we are no longer storing the weights but the shortest paths in pq, we prioritize shortest paths over biggger single edges... wow
			}
		}
	}
	
	// / TESTING
	cout << "DJIKSTRA:" << endl;
	printf("Vertex | Distance from Source\n");
	for (int i = 0; i < n; ++i) printf("\t%d \t|\t %d\n", i, dist[i]);
	
	return dist;

}
```


We can use a priority queue to work with weighted graphs. 