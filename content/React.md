JS framework for building interfaces. 

Why? 
- smooth transitions 
- don't need to "reload" pages because JS can run in background of a page, and this is what renders. 
- Vanilla JS is a nightmate. complex code is cumbersome, error-prone, hard to grasp. react components are so much easier to visualize. 

# JS vs React
In react JSX we have what looks like html and some dynamic pieces of code embedded with {}.

Consider a [[React Hooks]] useState it tells react to watch the variable and then it runs logic in {} to see if anything needs to be rendered differently. 


**Declarative UI Programing:** you define the target UI state, not the steps to get there. 
- "define the goal and not the steps."
- Vanilla javascript is imperative

# creating a project:
With vite, the more modern approach
```bash
# Using npm

npm create vite@latest my-react-app -- --template react

# Then navigate to the project and install dependencies

cd my-react-app

npm install # or yarn install or pnpm install

npm run dev # to start the development server
```


## Build process
> [!quote]
> *The code you write is not the code that gets executed. It is transformed first.*

The build projess works on the App.jsx before it is inserted into the root div in the index.html file.

Why does the code need to be transformed?
1. [[JSX]] code wont't execute on browser out of the box in [[JavaScript]], it is not a standard  [[JavaScript|JS]] feature.
2. The code would not be optimized for production. 

this is also why you need [[Node.js]] to run your react app, not just ebcause of npm, but beause it is used by these tools in the background to make sure your code is transformed. 

will merge all your react files.

# Development server
```bash
npm run dev # to start the development server
```
It is watching your sourcecode behind the scenes. and adjusting the html file.