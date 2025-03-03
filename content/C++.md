
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