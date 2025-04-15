[[Data Structures]]
[[C++]]

#### ASCII 
##### 🧠 What is ASCII?

- **ASCII** stands for **American Standard Code for Information Interchange**.
- It assigns **numerical values (0–127)** to **characters**, including:
    - Letters (`A`–`Z`, `a`–`z`)
    - Digits (`0`–`9`)
    - Punctuation (`!`, `@`, etc.)
    - Control characters (like newline `\n`, tab `\t`)

##### 🔤 Character Encoding in C++

- C++ `char` types use ASCII values by default (in most systems).
- A `char` **is just a small integer**, so:
```cpp
char c = 'A';
int val = c; // val = 65`
```

---

##### 💡 Important ASCII Facts for Strings/Chars in C++

|Concept|Explanation|
|---|---|
|`'A'` to `'Z'`|ASCII values from **65 to 90**|
|`'a'` to `'z'`|ASCII values from **97 to 122**|
|`'0'` to `'9'`|ASCII values from **48 to 57**|
|Case conversion|`'a' - 'A' == 32`, so you can flip case with `+/- 32`|
|Character checks|Use `isalpha(c)`, `isdigit(c)`, `islower(c)`, etc. from `<cctype>`|
|Sorting/comparison|You can compare chars directly: `'a' < 'b'`, `'A' < 'a'`|
|Looping through alphabet|Use ASCII values: `for (char c = 'a'; c <= 'z'; ++c)`|

## Stringify 🔢 

The most ***efficient way to convert a digit `x ∈ {0, 9}` into a character*** is by adding its integer value to the ASCII value of `'0'`, like so:

```cpp
string ans = ""; 
int x = 5; 
ans += x + '0';`
```


Think of `x + '0'` as:

> “Give me the ASCII value of `'0'`, then add `x` to get the ASCII value of the digit character.”

This is much faster than the more familiar alternative using `to_string`:

```
`string ans = ""; int x = 5; ans = to_string(x) + ans;`
```


✅ Use `x + '0'` when working with single digits in performance-sensitive code, especially in tight loops or when building strings character by character.
Using stringify (by adding a character to '0') is faster than to_string in C++ because: 

The Overhead of to_string: The to_string function is a more complex operation that:
1. Creates a new string object
2. Handles memory allocation
3. Performs the actual conversion from integer to string
4. Handles various edge cases and formatting

Simple Character Addition: The stringify approach using remainder + '0' is much simpler because:
1. It directly converts a single digit (0-9) to its ASCII character equivalent
2. It's a single arithmetic operation
3. No memory allocation is needed
4. No string object creation is required



## String Comparison with `<`, `>`, `==` in C++

In modern C++, `std::string` supports direct comparison using **relational operators**, just like numbers:

```cpp
std::string a = "apple";
std::string b = "banana";

if (a < b) std::cout << "apple comes before banana\n";
if (a != b) std::cout << "they are different\n";
````

---

#### ✅ Supported Operators:

|Operator|Meaning|Example|
|---|---|---|
|`==`|Equal|`"abc" == "abc"` → `true`|
|`!=`|Not equal|`"abc" != "xyz"` → `true`|
|`<`|Lexicographically less than|`"apple" < "banana"`|
|`>`|Lexicographically greater than|`"zebra" > "ant"`|
|`<=`|Less than or equal|`"abc" <= "abc"`|
|`>=`|Greater than or equal|`"cat" >= "ant"`|

---

### 📘 Lexicographical Order:

- Comparison is done **character by character** using ASCII values.
- Stops at the first differing character.
- If one string is a prefix of the other, the shorter one is considered smaller:

```cpp
"app" < "apple"  // true
```
