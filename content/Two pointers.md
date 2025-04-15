## 🧠 Algorithmic Pattern: Two Pointers (C++)

We often need to iterate through two containers simultaneously — for example, when computing a function that depends on both (e.g., merging sorted arrays, comparing values, etc.).

The worst approach in such cases is **nested iteration**, which can lead to quadratic time complexity. A more efficient and clean solution is to use **a single while loop** that moves pointers (or iterators) through both containers. The `while` loop should include:

- An `OR` condition for the end of each iterable
- Any additional problem-specific stopping conditions also separated by `OR`

> [!warning] These extra conditions might cause the loop to continue even when both iterators have reached the end, so take care to structure them carefully.


#### Example: Adding two binary strings

```cpp
string addBinary(string a, string b) {	
	// Iterate in reverse order
	int i = a.length() - 1;
	int j = b.length() -1;

	int carry = 0;	
	string ans = "";
	
	while (i >= 0 || j >= 0 || carry > 0){
		if(i >= 0){
			carry += (a[i] == '1') ? 1 : 0;;
		}
		if(j >= 0){
			carry += (b[j] == '1') ? 1 : 0;
		}
		int remainder = carry%2;
		carry/=2;
		ans = to_string(remainder) + ans;
		i--;
		j--;
		}
	return ans;

}
```