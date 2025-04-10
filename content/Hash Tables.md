Given a key, it gives you a way of associating a value with it for very quick lookups.

You can use it for almost anything, it has constant lookup up, insertion and deletion because it is essentially a structure storing pointer names. 

You may want to map names to full strucutes 

| Key         | Value                                                         |
| ----------- | ------------------------------------------------------------- |
| "Al Pacino" | new Person(id = 122, address = "scarface@daughterswedding.x") |
| "Tony Romo" | new Person(...)<br>"John"                                     |


````markdown
## 🧠 How Does a Hash Map Work?

At its core, a **hash map** is just two things:
- An **array**
- A **hash function**

The hash function maps a key (often a string) to an integer index in the array:

```text
hash: string → int
````

This index tells you where to store or look for the value associated with that key.

---

## ⚠️ Hash Collisions

### The Problem:

Two different keys can end up with the **same hash** (i.e., same index in the array).  
This happens because the set of all possible strings is **way bigger** than the number of available array slots.  
So, collisions are inevitable.

---

## 🛠️ Collision Resolution: Chaining

The easiest fix is **chaining**:

- Instead of storing a single value at each index, we store a **linked list (or sometimes a dynamic array)** of key-value pairs.
    
- So if `"Alex"` and `"Potatoes"` hash to the same index, let’s say `123`, your structure might look like this:
    

```python
a[123] = LinkedListNode("Alex") → LinkedListNode("Potatoes")
```

### Lookup Process:

1. Hash the key to find the index.
2. Traverse the list at that index
3. Compare the **actual key strings** to find the correct match.

The hash only gets you in the ballpark—**string equality** finishes the job.

# Complexities
Depending on your hash implementation, look up is constant of O(n) for a terrible hash table. 
constant time insert find and delete assumed.

---

## 📝 TL;DR

- Hash map = array + hash function.
- Hash function maps keys (like strings) to array indices.
- Collisions happen when different keys hash to the same index.
- Chaining = store a linked list at each index to handle multiple entries.
- Lookups compare **real keys** after hash matches.

