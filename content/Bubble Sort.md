A simple (naive) sorting algorithm.  

It repeatedly steps through the array, swapping adjacent elements if they’re in the wrong order.  
Each pass "bubbles" the largest unsorted element to its correct position at the end.  
This means that after each pass, the sorted portion grows, so the loop can be bounded by a decreasing index.

```cpp
/* In increasing order, from smallest to largest */
class Solution {

	void bubbleSort(vector<int> &arr){

		bool isSorted = false;
		int lastUnsorted = arr.size()-1;
		
		while(!isSorted) {
			isSorted = true;
			for (int i = 0; i < lastUnsorted; i++){
				if (arr[i] > arr[i+1]){
					swap(arr, i, i+1);
					isSorted = false;
				}
			}
			lastUnsorted--; // maximums are guaranteed to get sorted one by one after each iteration
		}
	}
	
	void swap(vector<int> &a, int i, int j){
		int temp = a[i];
		a[i] = a[j];
		a[j] = temp;
	}

};
```


Complexity: 
* $O(1)$ space: don't need additional memory
* $O(n^2)$ time: