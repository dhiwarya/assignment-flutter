# Flutter Assignment
Name    : Dhiwa Arya Kusumah
NPM     : 2106657115
Class   : International Class
------------------------------------------------------------------------------------------------------------------
## Counter_7
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

--------------------------------------------------------------------------------------------------------------------
## Flutter Form 
### Explain the difference between Navigator.push and Navigator.pushReplacement.
All of the navigation features in a Flutter app are provided by the Navigator class. The stack can be modified using Navigator's push to stack or pop from stack functions. Navigator. pop is used to return from the current page, while Navigator. push is used to navigate to a newer page.
Navigator.pushReplacement, Push the given route in place of the navigator's existing route that most closely encloses the given context, and when the new route has finished animating in, dispose of the old one.

### List all the widgets you used in this project and explain their functions
- Form, make a form.
- TextFormField, make an input text in form.
- ListView, a scrollable column.
- ListTile, make an element inside ListView.
- Divider, to divide input teks.
- InputDecoration, to style TextFormField.
- OutlineInputBorder, to modify TextFormField.
- DropDownButton, add a dropdown button.
- DropDownMenuItem, make a choice list in dropdown menu.
- TextButton, add a button with text.
- Navigator, to manage the page that is shown.
- Drawer, to navigate between app.

### Name the types of events that exist in Flutter(example:onPressed)
- onPressed
- channel.deleted
- channel.updated
- onSaved
- message.deleted
- message.updated
- notification.mark_read
- onChanged

### Explain how you implemented the checking list above
1. Make a new dart file for navigation, form and data.
2. Create a drawer in nav.dart to navigate through the app.
3. Create a form that can take input in character, integer and datetime.
4. Create a page that can return the input in data.dart.
5. Implement the nav.dart in every pages.
6. Add, Commit then push to github.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## Flutter Web Service Integration

### Can we retrieve JSON data without creating a model first? If yes, is it better than creating a model before retrieving JSON data?
Yes we can retrieve JSON data without creating a model but it would be inefficient if we're working with many attribute of models.

###  List the widgets that you used in this project and explain their functions.
- FutureBuilder, a widget that is formed based on the results obtained from a Future
- AsyncSnapshot, a permanent representation as the latest result of an asynchronous event
- CircularProgressIndicator, a circle rotates when an asynchronous event occurs
- GestureDetector, gesture detection, is this time a single touch on the Container of each watchlist
- Checkbox, creates a box that can be ticked, can return a boolean value
- Align, create a widget in it
- RichText, create text that has different styles
- TextSpan, creates text inside a RichText

### Explain the mechanism of retrieving data from json so it can be shown in Flutter.
- Retrieve the json data from the website.
- Decode the json data
- Convert it into the models that we have created
- The data can now be shown

###  Explain how you implemented the checklist above.
1. Create a new page for My Watch List
2. Make futures to fetch json file from heroku.
3. Make models for the my watchlist in my watchlist
4. Create a new page to display the detail of the movies.
5. Create new route in the nav.dart for navigation to the my watchlist
6. git add - commit - push