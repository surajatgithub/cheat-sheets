What is node JS
It is javascript runtime, used to compile the javascript, provides the environment to run the Javascript code?

Why node js is required?
-   JS runs on Client-side
-   It provides the NPM (Node Package Manager)
-   It provide a set of packages which are required for the development
-   They wanted to run the JS anywhere not only on Browser (Client-Side)
-   We can install the node js and run the JS code anywhere, you don't need the Client-side

What is framework?
-   It is collection of basic code which required to create a project
-   You dont have to create a code from scratch
-   It covers the 30% of code

What is Angular?
-   Angular is JS framework written in javascript language
-   It is used to all the client side work does not have anything with server side
-   THe curret version is 8 or something 8 or 9
-   It is supported by GOogle
-   The first version of angular was ANGULARJS
-   It is was JS driven
-   It became famouse whne it launched
-   It was not familier for the developer from other background C#, Java, etc
-   To achiev this they launched Angular 2 
-   It followed the OOPS concept, It was called OOPS framework
-   It does not use the JS directly but it uses Type Script

Type Script?
-   It is superset of Javascript
-   Node compiles the TypeScript code into JavaScript code
-   JS follows the standard ES6

What is react?
-   It is client side library, it can be manipulated
-   It does not force you to do anything

What is vue?
-   It is also a frameowork

What should we choose?
-   What ai our requirement?
-   What is the backgroud? OOPS, POP, C or anyother?
-   What is your country, which framework is popular in your country?

# Install Angular
-   Install node js
-   $ npm install -g typescript
-   $ npm install -g @angular/cli
-   $ ng --version

# Create Angular Project
$ ng new FirstApp
$ ng serve

# Concepts / Features

*ngFor
    -   *ngFor is a "structural directive".
    -   Structural directives shape or reshape the DOM's structure, typically by adding, removing, and manipulating the elements to which they are attached.
    -   Directives with an asterisk, *, are structural directives.

*ngIf
    -   Add the product descriptions. On the <p> element, use an *ngIf directive so that Angular only creates the <p> element if the current product has a description.

Interpolation {{ }}
    -   To display the names of the products, use the interpolation syntax {{ }}. Interpolation renders a property's value as text. Inside the <div>, add an <h3> to display the interpolation of the product's name property:

Property binding [ ]
    -   To make each product name a link to product details, add the <a> element and set its title to be the product's name by using the property binding [ ] syntax, as follows:

Event binding ( )
    -   Add a button so users can share a product with friends. Bind the button's click event to the share() method (in product-list.component.ts). Event binding uses a set of parentheses, ( ), around the event, as in the following <button> element:
    
Tow way binding [(ngModel)]="modelName"
$event

# Directive
-   It used to manipulate the html DOM
-   Internaly it is function, compiles and runs in behind
-   Component it self is directive

## Component directive
## Structured directive (It is represented by * sign like *ngif)
-   ngIf
-   ngFor
-   Ng template
    -   It holds the template or html or anything, it will be not be displayed
## Attribute directive

## Pipe
-   It is function internally which is defined by the Angular
-   It help in filtering/manipulation of data
-   It does not require event binding to call it

## Custom property binding from one component to another component

## CMDS
```sh
$ ng g c --skipTests <component_name>
$ ng g component --skipTests <component_name>
$ ng g s --skipTests <service_name>
$ ng g service --skipTests <service_name>
```