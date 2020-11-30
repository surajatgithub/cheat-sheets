What is node JS
It is javascript runtime, used to compile the javascript, provides the environment to run the Javascript code?

Why node js is required?

- JS runs on Client-side
- It provides the NPM (Node Package Manager)
- It provide a set of packages which are required for the development
- They wanted to run the JS anywhere not only on Browser (Client-Side)
- We can install the node js and run the JS code anywhere, you don't need the Client-side

What is framework?

- It is collection of basic code which required to create a project
- You dont have to create a code from scratch
- It covers the 30% of code

What is Angular?

- Angular is JS framework written in javascript language
- It is used to all the client side work does not have anything with server side
- THe curret version is 8 or something 8 or 9
- It is supported by GOogle
- The first version of angular was ANGULARJS
- It is was JS driven
- It became famouse whne it launched
- It was not familier for the developer from other background C#, Java, etc
- To achiev this they launched Angular 2
- It followed the OOPS concept, It was called OOPS framework
- It does not use the JS directly but it uses Type Script

Type Script?

- It is superset of Javascript
- Node compiles the TypeScript code into JavaScript code
- JS follows the standard ES6

What is react?

- It is client side library, it can be manipulated
- It does not force you to do anything

What is vue?

- It is also a frameowork

What should we choose?

- What ai our requirement?
- What is the backgroud? OOPS, POP, C or anyother?
- What is your country, which framework is popular in your country?

# Conventions
-   Class name should follow Pascal Naming convention (ClassName | CourcesComponent)

# Install Angular

- Install node js
- \$ npm install -g typescript
- \$ npm install -g @angular/cli
- \$ ng --version

# Create Angular Project

$ ng new FirstApp
$ ng serve

# Concepts / Features

*ngFor - *ngFor is a "structural directive". - Structural directives shape or reshape the DOM's structure, typically by adding, removing, and manipulating the elements to which they are attached. - Directives with an asterisk, \*, are structural directives.

*ngIf - Add the product descriptions. On the <p> element, use an *ngIf directive so that Angular only creates the <p> element if the current product has a description.

Interpolation {{ variableName; methodCall() }} - To display the names of the products, use the interpolation syntax {{ }}. Interpolation renders a property's value as text. Inside the <div>, add an <h3> to display the interpolation of the product's name property:

Property binding [ ] - To make each product name a link to product details, add the <a></a> element and set its title to be the product's name by using the property binding [ ] syntax, as follows:

Event binding ( ) - Add a button so users can share a product with friends. Bind the button's click event to the share() method (in product-list.component.ts). Event binding uses a set of parentheses, ( ), around the event, as in the following element:

Two way binding [(ngModel)]="modelName"
\$event

# Directive

- It used to manipulate the html DOM
- Internaly it is function, compiles and runs in behind
- Component it self is directive

## Component directive

## Structured directive (It is represented by * sign like *ngif)

- ngIf
- ngFor
- Ng template
  - It holds the template or html or anything, it will be not be displayed

## Attribute directive

## Pipe

- It is function internally which is defined by the Angular
- It help in filtering/manipulation of data
- It does not require event binding to call it

## Custom property binding from one component to another component

## CMDS

```sh
$ ng g c --skipTests <component_name>
$ ng g component --skipTests <component_name>
$ ng g s --skipTests <service_name>
$ ng g service --skipTests <service_name>
```

## Service

- file name "courses.service.ts"

## Binding

### Property Binding

```sh
<img [src]='imageUrl' />
```

- Property binding works only one way, from componenet to the DOM

### Attribute Binding

```sh
<td [attr.colspan]="colSpan">
jhjhjhjh
</td>
```

- We have two things with us one DOM and another html markup language
- Some html attributes dont have direct representaion in DOM
- That why the attrbute binding comes in the picture

### Class Binding

```sh
<button class="btn btn-primary btn-sm" [class.active]="ïsActive">
    Small
</button>
```

### Style Binding

```sh
<p [style.color]="isActive ? 'blue' : 'white'">Paragraph</p>
```

### Event Binding

```sh
<button class="btn btn-primary btn-sm m-2" (click)="onSave($event)">
    Save
</button>
```

### Event Filtering

```sh
<button class="btn btn-primary btn-sm m-2" (click.enter)="onSave($event)">
    Save
</button>
```

## Template Variable

```sh
<input #email (keyup.enter)="saveEmail(email.value)" />
```

## Two way binding

```sh
<input [(ngModel)]="modelEmail" (keyup.enter)="showEmail()" />
```

## Pipes

## Building Re-usable Components

## Components

### Input Properties

```sh
import { Component, OnInit, Input } from '@angular/core';
@Input() isFavourite: boolean;
```

### Input Properties

```sh
import { Component, OnInit, Input } from '@angular/core';
@Input('isSelected') isFavourite: boolean;
```

### Output Properties

```sh
import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';
@Output('changeOld') change = new EventEmitter();
onClickMe() {
    this.isFavourite = !this.isFavourite;
    this.change.emit();
}
```

### Passing Event Data

```sh
import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';
@Output('changeOld') change = new EventEmitter();
onClickMe() {
    this.isFavourite = !this.isFavourite;
    this.change.emit({ isFavourite: this.isFavourite });
}
```

### Shadow DOM

- It enables DOM tree and syles encapsulation
- It allows us to apply scoped styles to the elements without bleeding out to the outer world
- It is supported in latest version of browsers like Safari 10 and Chrome 53 or higher
- encapsulation: ViewEncapsulation.Emulated (Put this in component directive defination)

### Ng-content & Ng-container

- Ng-content dumps the entrire elemt to ng-contetnt element
- Ng-container dumps the just inner HTML/Body to the ng-content element

#### Template

```sh
<div class="card card-default">
    <div class="card-body">
        <h5 class="card-title">
            <ng-content select=".title"></ng-content>
        </h5>
        <div>
            <ng-content select=".ng-container"></ng-content>
            <ng-content select=".body"></ng-content>
        </div>
    </div>
</div>
```

#### Reuse the template

```sh
<app-panel>
    <div class="title">I am Title</div>
    <ng-container class="ng-container">NG Container</ng-container>
    <div class="body">I am Body</div>
</app-panel>
```

## Router

### Reading URL parameters

```sh
constructor(private route: ActivatedRoute) {
    console.log(this.route.snapshot.paramMap.get("animal"));
}
```

## Directives

- We have two type of directives
  1.  Structural directives
      - Modify the structure of the DOM by adding or removing the DOM elements
      - It is prefixed with the "*" sign like "*ng-if"
  2.  Attribute directive
      - Modify the attributes of the DOM element

### *ng-if

```sh`
<h2>NG IF</h2>
<div *ngIf="0; then courseList else noCourseAvailable"></div>
<ng-template #courseList>
    List of Courses
</ng-template>
<ng-template #noCourseAvailable>
    No cources yet
</ng-template>
```

### ng-switchcase

```sh
<ul class="nav nav-pills">
    <li [class.active]="viewMode == 'map'"><a (click)="viewMode = 'map'">Map View</a></li>
    <li [class.active]="viewMode == 'list'"><a (click)="viewMode = 'list'">List View</a></li>
</ul>

<div [ngSwitch]="viewMode">
    <div *ngSwitchCase="'map'">Map</div>
    <div *ngSwitchCase="'list'">List</div>
    <div *ngSwitchDefault>Otherwise</div>
</div>
```

### ng-for

-   It has several local variables like index, first, last, odd, even, etc

### ngClass & ngStyle (similar)

```sh
<ul class="nav nav-pills">
    <li [ngClass]="{'active': viewMode == 'map'}"><a (click)="viewMode = 'map'">Map View</a></li>
    <li [ngClass]="{'active': viewMode == 'list'}"><a (click)="viewMode = 'list'">List View</a></li>
</ul>
```

### Safe Traversal Operator

```sh
{{ task.assignee?.name }}
```

### Creating custom directive
#### Component
```sh
import { Directive, HostListener, ElementRef, Input } from '@angular/core';

@Directive({
  selector: '[appInputFormat]'
})
export class InputFormatDirective {
  @Input('appInputFormat') format: string;

  constructor(private el: ElementRef) { }

  @HostListener('blur') onBlur() {
    let value: string = this.el.nativeElement.value;
    if (this.format == 'uppercase') {
      this.el.nativeElement.value = value.toUpperCase();
    } else if (this.format == 'lowercase') {
      this.el.nativeElement.value = value.toLocaleLowerCase();
    }
  }
}
```

#### Html
```sh
<input type="text" class="form-control" appInputFormat [format]="'lowercase'" placeholder="Lowercase" />
<input type="text" class="form-control" appInputFormat [format]="'uppercase'" placeholder="Uppercase" />
<input type="text" class="form-control" [appInputFormat]="'uppercase'" placeholder="Uppercase" />
```

#### Explanation
-   HostListener: This is used for listening to the DOM event
-   ElementRef: This is used for getting the DOM target element
-   If directive is expecting only one parameter then you can directly pass your value to directive name "appInputFormat" and use it in the component

## Forms

### FormControl (ngModel)
-   Each input field of the form will have form control object which will help us to know if form is dirty, valie, error etc
-   This can be applied to induvidual the form control
-   To create form control you should add ngModel directive to your input element and pass it to any template variable and then use template variable anywhere
```sh
<input ngModel name="firstName" #firstName="ngModel" />
```

### FormGroup (ngForm)
-   This can be used for the form itself like FormControl for from flelds
-   Using this you will have access to the all the form fields and thier status
-   ngForm directive ia already added to the form bydefault. YOu have to pass it to any template variable and then use that anywhere
-   ngSubmit is event fired when form is submitted
```sh
<form #f="ngForm" (ngSubmit)="submitContactForm(f)"></form>
```

### ngModelGroup directive
-   This directive is used for grouping the form controls that is ngModels together
```sh
<div ngModelGroup="contact" #contact="ngModelGroup"></div>
```

### Other
-   [ngValue] can be used to store the complex object in selction.option
