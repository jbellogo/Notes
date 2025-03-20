---
aliases:
  - js
  - JS
---

Can be executed in many environments: 
* Browser
* Computer 
* Mobile (with react native)

# Tag attibutes
### defer
```html
 <script src="" defer></script> 
```
you may want the defer attribute if you want the HTML to be executed first, so that you script then have eccess to those elements.

### type=module
```html
 <script src="" type=module></script> 
```
allows you to import code from script A to script B.

[[React]] uses a build process so you will almost never add these tags to your [[React]] project on their own. It injects these script tags for you.

# Imports Exports
only one dafult export per file. The default export is just a value, you cannot name it into a variable.
You can do normal, named export to as many things as you want. 

```js
import * as util from "./util.js"
```
Imports as an object. 


# Operations 
```js
let x = 0;
x++; // NO, DOESNT WORK!
x+=1; // YES!
```

Structures can be functions with a name-arrow funtion 
```js
var createCounter = function(init) {
	
	let current_value = init;
	
	return {
	
		increment: ()=>{ return current_value+=1;},
		
		"decrement": () => {return current_value-=1;},
		
		"reset": () =>{
		
			current_value = init;
	
			return current_value;
		
		}
	}
};
```

## Types

### Arrays

#### map()
doesn't mutate element in place, returns a new arrayr

```js
const numbers = [4, 9, 16, 25];  
const newArr = numbers.map(Math.sqrt)  // returns a new array
```


## props

### Spread dots (...) operator

> [!quote]
> *In JavaScript, you use the spread operator to expand an iterable inside a specified receiver, as its name suggests.*
> — freecodecamp

Deep copy of an array: 

```js
let studentNames = ["Daniel", "Jane", "Joe"];

let names = ["Joe", ...studentNames];

console.log(names); // ["Joe", "Daniel","Jane","Joe"]

console.log(["joe", studentNames]) // ["joe", ["Daniel","Jane","Joe"]]
```

### arguments object
All functions have an arguments object in JavaScript.

> [!tip]
> Everything is an object  in JavaScript

So everything has attributes. fn.name, fn.arguments, etc.

# Promises
Like a python async await. 

The **`Promise`** object represents the eventual completion (or failure) of an asynchronous operation and its resulting value.

# Arrow functions 
Functions that don't need a name. 
Omit the function keyword 
```js
export default () => {
	console.log("arrow func");
}
```

2) Omitting function body curly braces

If your arrow function contains no other logic but a return statement, you may omit the curly braces and the return keyword.

Instead of
```js
number => { 
  return number * 3;
}
// Also 
number => number * 3;

```

3) Special case: Just returning an object

```js
number => ({ age: number });
```

# Objects
they are more like classes than dictionaries. You call their attributes with a dot.

# Arrays
```js
arr.findIndex( (item) => item==="tony" );
arr.map((item)=> item+10);
```

# Destructuring 
```js
const [a, b] = ["tony", "romo"]; // list destructuring 
const {name, last} = { name : "joe", last : "ma"}; // object destructuring
```

**function parameter lists**.

For example, if a function accepts a parameter that will **contain an object** it can be destructured to _"pull out"_ the object properties and make them available as **locally scoped variables** (i.e., variables only available inside the function body).

Here's an example:
```js
function storeOrder(order) {
	localStorage.setItem('id', order.id);
	localStorage.setItem('currency', order.currency);
}

```
Instead of accessing the `order` properties via the _"dot notation"_ inside the `storeOrder` function body, you could use destructuring like this:

```js
function storeOrder({id, currency}) { // destructuring
   localStorage.setItem('id', id);
   localStorage.setItem('currency', currency);
 }
```
