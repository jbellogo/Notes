Really just special types of pointers for things like vectors, arrays, and other *iterables.* 


They can be derefenced to receover the value at the memory address. 
They are memory addresses. 
they can be increased, akin to a 'node->next :: node' in a linekd list. 


##### Using C++ Iterator
```cpp
sort(v.begin(), v.end());
reverse(v.begin(), v.end());
random_shuffle(v.begin(), v.end());
```

Declaring the iterator
```cpp
set::iterator it = s.begin();
// OR Simpler/Shorter
auto it = s.begin();`
```

The element to which an iterator points can be accessed using the * symbol. For example, the following code prints the first element in the set:
```cpp
auto it = s.begin(); cout << *it << "\n";
```


Iterators can be moved using the operators ++ (forward) and — (backward).

`//Prints all the elements in increasing order using iteratorfor (auto it = s.begin(); it != s.end(); it++) { cout << *it << "\n"; }`


#### Iterators vs Integer Indexing
There are two ways to traverse an iterable type (vectors, maps, sets, etc) the first one is with iterators:

```cpp
std::vector<int> v = {1, 2, 3, 4};
for (auto it = v.begin(); it != v.end(); ++it) {
	std::cout << *it << "\n"; 
}
```


Or with range-based for loops:

```cpp
for (int val : v) { 
	std::cout << val << "\n"; 
}
```


| Use Case                              | Iterators ✅                                                                 | Integer Indices ✅                                                        |
|---------------------------------------|------------------------------------------------------------------------------|---------------------------------------------------------------------------|
| Generality                            | Work with all standard containers (`list`, `set`, `map`, etc.)              | Only valid with containers that support indexing like `vector`, `array`  |
| STL Algorithms                        | Required by most `<algorithm>` functions like `std::sort`, `std::find`     | Not compatible with STL algorithms directly                               |
| Flexibility                           | Bidirectional/random access for easy navigation                             | Limited to manual control over position                                   |
| Safety                                | Less prone to off-by-one or invalid access bugs                             | Manual index management can be error-prone                                |
| Need the index                        | Not as straightforward; need `std::distance` or counter                     | Direct access via `v[i]`; easy to compare positions like `v[i] vs v[i+1]` |
| Frequent random access                | Can be verbose or awkward for arbitrary access                              | Clean and fast random access (`v[i]`)                                     |
| In-place modifications                | More awkward for modifying specific positions                               | Precise control over exact elements to change                             |

### ⚖️ Which is "better"?

- **Iterator style**: More idiomatic C++ for general container traversal, especially in modern C++ 

- **Index style**: Better for numerical, performance-heavy code or when indexing logic is important.