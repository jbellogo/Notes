[[Data Structures]]

A data structure for text, and words. Used in problems with the 'word validation' flavour. 

a type of directed, asymmetrical tree used to store valid sequences of charachters. 

Use cases:
- Word validation: very quick lookups of words, better than a list of strings, to store a kind of dictionary 
- Mid typing word validation: As you start typing a sequence of sentences, you can run it through your trie, and get back a result structure that points you to where you are sitting, xfor exampe if I type CA_, then , calling trie_validate("CA") gives me back a structure that then will validate if the next word is one from \["R"\] in the example bellow.
	- mytrie.validate("C").validate("A").validate("B")... this is how we would like to call it, you can  either:
		- keep state within the trie 
		- or return a node reference and then handle the logic yourself. 

![[Screenshot 2025-04-07 at 7.20.37 PM.png]]

```cpp
class Node{
	map<char, Node> children;
	bool isCompleteWord; 
}
```