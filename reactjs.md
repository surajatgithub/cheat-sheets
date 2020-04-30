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