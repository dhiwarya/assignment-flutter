## Counter_7
------------------------------------------------------------------------------------------------------------------
##  Explain what is meant by stateless widget and stateful widget and explain the difference between them.
### Stateless Widget
Is immutable meaning that it cannot be changed. The component and properties remain unchanged. In simpler words, the widgets cannot be change while the application is running.
### Stateful widget
Is mutable widget, meaning that it can be changed througout the running time of the application. The appearance can change according the request and then sent it back in a form of response.

## Mention what widgets you use in this project and explain their functions.
- Scaffold : Serves as a foundation structure and styling in the application.
- Column : Display children in a vertical format.
- Row : Display children in a horizontal format.
- Text : Display string
- AppBar : Display toolbar widgets

## What is the function of setState()? Explain what variables can be affected by the function.
In order to change the UI of stateful widget, we need to use setState() function because it allow us to change the UI of stateful widget. Variables that are affected by setState() fucntion are the variables that are going to be changed.

## Explain the difference between const and final.
### Const
can be used to declare immutable variables whose values are constant and must be known at compile time, meaning that the value of the variable must have been assigned a value directly.
### Final
can be used to declare immutable variables whose values are or are not known at compile time.

## Explain how you implement the checklist above.
1. Create a new app using flutter create weeklyasgflutter
2. Add new function named _decrementcounter to decrement the number
3. Add new function named _setText() to set the text whether it is odd or even, according to the counter.
4. Design the interface in scaffold widget to and set the color of even to red and odd to blue.
5. Push the changes to github.
