# Flutter-Web-Course
Flutter Web Course Assignments

## How to add a background image to a container?
* To do that, we must use the "decoration" property of the container, we assign a BoxDecoration() widget. Inside of it, we have a "image" property. And we assign to it a DecorationImage() widget.
* Inside of it, we declare the image using the "image" property and in order to fill the hole space, in the "fit" property, we use "BoxFit.cover".

## Best practices about Data Types
* Avoid using "var" and "dynamic" in your programs, unless you really need it for a reason.
* Dart, as well as Haskell, has type inference. This means that when you declare a variable of type "var" making an assignment, the language has a way to discover which should be the type of this variable.
* If you just create a variable using "var" and don't assign anything to it. Then, this variable will work as a "dynamic".

## Working with too much data that is related but is stored in different data structures?
* Then, it might be useful to create a class that will store all of this data that is related.

## What if I want to use a Image() Widget as a button?
* Well, to do that we can just wrap this Image() Widget with a FlatButton() Widget or other type of button.
* Remember that the FlatButton() Widget already comes with padding.
* When dealing with Image(), the best option is to use the FlatButton() because the other ones add an strange effect in its animation. So visually speaking, it's kinda bad.
* The "OnPressed:" property of Widgets that represents buttons expects an anonymous function. That is: a function that does not have a name nor a return type.

## About the Expanded() Widget
* The Expanded() widget is used only inside a Row() or a Column(). This means that in the children property of Row() and Column() we can use this widget. And the Expanded() widget tells its child to occupy as much space as it can inside the row or inside the column.
* If we have only one expanded() inside a Row() or a Column(), it will occupy the whole Row() or the whole Column(). If we have more than one, then they will occupy the available space equally.
* You can also specify how much space it should take compared to other Expanded() widgets present on the same Row() or Column(). To do that, we use the "flex" property. Which works like a fraction.

## About the Center() Widget
* The Center() Widget center its child inside the Center() Widget's parent. As an example: If we have something like: body -> center -> row. The Center() widget will center the Row() widget in respect to the "body" property.

## Problems when cloning a repo from GitHub and Android Studio complaining about the Dart SDK?
* The Dart SDK is under the flutter folder, more specific the path is usually the following: flutter\bin\cache\dart-sdk
* After setting the correct path described above, you should hit the button: "Get Depedencies" and everything should be ok.

## How to change the length of the line produced by the Divider() widget?
* The straightforward solution is to wrap the Divider() widget with a SizedBox() widget, set its child to the Divider() widget, and set the width property of the SizedBox() widget to our own choice.

## Difference between Hot Reload and Hot Restart?
* Hot Reload is just used to change the visual part (the UI) of our app. It DOES NOT affect the state/data of our app.
* Hot Restart refreshes both our visual aspects and our data/state. It is indeed used to restart our data.

## Difference between Margin and Padding?
* Margin is used for the outside of our Widget.
* Padding is used for the inside of our Widget.

## Hot Reload not working?
* Hot Reload is a tool provided by the Flutter Team which allows us to test the changes we made in our code almost simultaneously after we actually changed it.
* But Hot Reload will only work if we are dealing with Stateless or Stateful Widgets. Otherwise, it won't work properly.

## More about Hot Reload
* Hot Reload only changes the visual aspect of our app. That means that it won't lose the state of our app and neither its data.
