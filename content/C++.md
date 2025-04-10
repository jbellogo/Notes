
# Pointers 
the value of a pointer is an address. Whe. you dereference it, you retrieve the contents of the address. 

# Integers
There is no type that can handle a 100 digit number, for big numbers you need to represent them as ana array or a string, or a linked list and then write functionality for them. Ie write your own type class with its respective properties. 


# Dependencies

When you use several modules, you need to linkl them together. you can just compile them together on one line: 
```shell
g++ -std=c++11 linked_list.cpp linked_list_tests.cpp  -g -o a.out
```
# headers
Unlike in python where modules are just imported. In C++ you need header files where you declare all classes and functions and anamespaces that you want to export, like an __init__.py. You then define them in a different .cpp file. The only exception is class constructors, which should be defined in .h files. 


# Segmentation faults 
\*Sad trombone noises\*

they are not mysterious, they happen because you are accessing memory that you have no business accessing. 

# Compilation
Use the -g flag for compiling with debug option

# Iterators
Really just special types of pointers for things like vectors, arrays, and other *iterables.* 

They can be derefenced to receover the value at the memory address. 
They are memory addresses. 
they can be increased, akin to a 'node->next :: node' in a linekd list. 

# gdb
For debugging

# Complexitites
Look up str.length(), vec.size() are both constant complexity.


# tuple unpacking
```cpp
auto [type, str] = split_type_str(logs[i])
```

# Strings 
strcmp(string_1, string_2) — Comparison of Strings The strcmp(str_1, str_2) function compares two character by character. If the first character of two strings is equal, next character of two strings is compared. This continues until the corresponding characters of two strings are different or a null character '\0' is reached. Return Value from strcmp() Return Value Remarks 0 if both strings are identical (equal) negative if the ASCII value of first unmatched character is less than second. positive integer if the ASCII value of first unmatched character is greater than second.


# Vectors
insert(position, element)
```cpp
letter_logs.insert(letter_logs.begin() + i, new_elem);
```


# Copies
C++ will create a depp copy of vectors and arrays if you just set a new one equal to another one:
```cpp
vector<int> my_deep_copy = og_arr;
```

###  Copies of Structures 

In C++, you can create a copy of an existing structure (or class instance) using the copy constructor. This copies the current state (i.e., the internal data) of the original object to a new instance:

```cpp
MyClassInstance my_deep_copy(ogClassInstance);
```

This technique is useful when you need a separate copy of an object. However, keep in mind that while it provides a simple way to duplicate data, it might not be the most efficient solution, especially when dealing with recursive structures. Recursive paths often require multiple copies at each step, which can lead to performance issues due to the overhead of creating and copying objects.