# Instalation

1. Install NPM
2. Install React
   ```sh
   $ npm i -g create-react-app@1.5.2
   $ npm install -g create-react-app
   ```
3. Install Visual Studio code
4. Add "Simple React Snippets" extension
5. Add "Prettier code formatter" extension

# Create react app

```sh
$ create-react-app react-app
```

# Run React App

```sh
$ npm start
```

Navigate to localhost:3000

# Router
```sh
import React from "react"; 
import ( BrowserRouter, Route, Switch ) from "react-router-domes"; 

import StorePicker from "./StorePicker";
import App from "./App";
import NotFound from "./NotFound"; 

const Router = => (
    <BrowserRouter> 
        <Switch>
            <Route exact path="/" component= (StorePicker) />
            <Route path="/store/:storeId" component= () />
            <Route component=fNotFound/ />
        </Switch>
    </BrowserRouter> 
)
export default Router;
```

==================================================================================================================
# React concepts
1.  Virtual DOM
2.  Components
3.  Unidirectional Data flow
4.  UI, The rest is upto you (Library, Reusibility across the mobile, web, desktop apps, VR etc)

# React keywords
1.  Declarative
2.  State
3.  JSX
4.  Props (Property)
5.  Components
6.  Virtual DOM

# The job og React developer
1.  Decide on Components (Re-usability)
2.  Decide the State where it lives
3.  What changes when State changes

# Getting Started
cmd: npx create-react-app monsters-rolodex
cmd: yarn start

# Tools
1.  Babel
    -   It is used for the browser copatibility of your code
2.  Webpack
    -   It minifies and bundles our imported js, css into build directory

# Directory architecture
-   Build
    -   This directory holds hte producion version of your code
-   SRC
    -   This is our workbook and hold our all the code written by you

# Import components
```h
export const CardList = () => {
  return <h1>jjjjjj</h1>;
};
import { CardList } from "./components/card-list/card-list.component";
```
```h
export default CardList = () => {
  return <h1>jjjjjj</h1>;
};
import CardList from "./components/card-list/card-list.component";
```

# Tips
1.  Get the child elements of parent component `({props.children})`

# React upgrade
$ yarn list react react-dom react-scripts [To check the version of the given packages]
$ make changes to you package.json file and use ^ sign before package version so that it will instal latest stable version without breaking
$ yarn install

# React lifecycle methods

### constructor()
-   When components loads for the first time
-   It is used for Initializing local state by assigning an object to this.state.
-   It is used for Binding event handler methods to an instance.

### render()
-   The constructor for a React component is called before it is mounted.
-   The render() method is the only required method in a class component.
-   The render() function should be pure, meaning that it does not modify component state, it returns the same result each time it’s invoked, and it does not directly interact with the browser.
-   If you need to interact with the browser, perform your work in componentDidMount() or the other lifecycle methods instead. Keeping render() pure makes components easier to think about.

### componentDidMount()
-   It get invoked just after the render()
-   It is like the ready method from JQUERY
-   You can write all you inits here and also API call if there any
-   componentDidMount() is invoked immediately after a component is mounted (inserted into the tree). Initialization that requires DOM nodes should go here. If you need to load data from a remote endpoint, this is a good place to instantiate the network request.

### componentDidUpdate(prevProps, prevState, snapshot)
-   It gets onvoked when any update happen to state or new props comes in
-   componentDidUpdate() will not be invoked if shouldComponentUpdate() returns false.

### shouldComponentUpdate(nextProps, nextState)
-   It gets invoked when componnent gets updated
-   Here you can decide if you want to render() and componentDidMount() by returning true or false

# React Routing
<!-- https://reacttraining.com/react-router/web/guides/quick-start -->
### Link
### withRouter
### Route
### Switch
### BrowserRouter
-   Link does not add URL to history
-   Router given us access to history, location, match params from props
-   We can push urls manually using history.push method on click event
-   props,match helps us create nested route structure


# Firebase
## Database 