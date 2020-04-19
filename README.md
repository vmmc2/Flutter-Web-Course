# Flutter-Web-Course
Flutter Web Course Assignments

## Nota Importante: Reutilizacao de Widgets
* Eh importante a gente notar quando estamos codando um projeto, se os widgets que estamos utilizando serao reutilizados em outros lugares. Pq isso eh importante? Pq nesse caso, eh muito mais conveniente criar uma class que represente um widget (e essa class naturalmente vai herdar propriedades de um Stateless Widget ou de um Stateful Widget) e alem disso, devemos atribuir um construtor para essa class. Pq devemos atribuir um construtor para a classe? Pq as vezes queremos mudar um atributo mt especifico dessa classe/widget sem perder a funcionalidade/atributos que a classe tambem pode nos ofertar. Ou seja, fazendo isso, estamos aproveitando ao maximo a reusabilidade e o reaproveitamento de Widgets de forma que possamos desenvolver um codigo mais conciso e legivel.

## About using numbers to represent different states and use of Enum
* It is a common practice that when we are coding some kind of project, we use different numbers to represent a set of states and then we do a bunch of comments in our code to explain what each of these numbers represent. But that is not a good practice because it makes hard for other people to understand what we are trying to do.
* A better solution to solve this type of situation is to use a programming concept called Enum. Using it makes possible for us to associate a number to a state. Is almost like we had a bool variable but instead of it having only two states(true or false) it has as many states as we like/need. The example below shows us a concrete example of its use:

```dart

  enum EnumName {typeA, typeB, typeC}
  enum CarType {SUV, Sport, Conversible}
  
  void main(){
    
    CarType.Sport;
    
    return;
  }
```




## How to make buttons without using FlatButton() or RaisedButton() widget?
* In the vast majority of the times, we will be wrapping the widgets that we want to make look like a button with a FlatButton() or a RaisedButton() widget. But sometimes, it is a bad idea to do this because these widgets actually change the layout of their child widget.
* So, what we actually want is to detect gesture. Or, in other words, to detect that the user has interact with a certain area of the screen. And the answer to the problem is GestureDetector() widget.

## About Symmetric Layouts
* When we are working with symmetric layouts. The best way to do it is using Row() and Column() widgets. And wrapping every widget that we are using inside an Expanded() widget. So we take all the space available equally.

## About the "final" and "const" keywords
* When we use the "final" in the declaration of a variable, we are making it a immutable variable. That means that once we have assigned a value to this variable, we cannot reassign any other value to that same variable.
* When we are working with Stateless Widgets we have to keep in mind that their state cannot be changed during the lifetime of our app. So it makes sense that all properties inside our Stateless Widgets should not be changed. So, in order to achieve this requirement, we must use "final variables" inside our Stateless Widgets.
* In general, "final" and "const" variables pretty much do the same thing: We create variables that can only be assigned to a value once and they hold on that value that we've first assigned until we reach the end of our program.
* The difference between them is that a "const" variable cannot access anything at runtime. Whereas a "final" variable can. So, in the vast majority of the cases, when we have something that must be immutable, the best choice is to use a "final" variable.

## About screens
* It is a good practice to have a dart file for each screen that we plan to have in our app.
* It is also a good practice to have a dart file to group different classes that we use in our project.
* We do that because it makes our code more organized, readable and modularized.

## Is it possible to use colors that are not defined in the MaterialApp?
* Yes, it is. But in order to do so, we must provide the HexNumber of the color that we want.
* We can easy discover the HexNumber of a color using a tool called ColorZilla.
* Generate the hexcode for a specific color. And use it inside the Color() widget that is assigned to a "color" property.
* In the Color() widget, we put our hexcode, but we have to delete the "#" symbol and also we must put the string "0xFF" at the beggining. This string "0xFF" indicates the opacity level of the color that we are using.

## How we can define a Theme Style that can be used everywhere in our app?
* To do that, we must use the "theme" property that is present in the MaterialApp() widget that we return as the first thing when we are running our app. The "theme" propert expects a widget called ThemeData() in which we can define a bunch of other properties that are going to define a pattern of how our app must be layed out when it comes to: fonts, color of cards, color os buttons, color of text and all kind of different stuff.
* To know more about all these things, take a look at the documentation.

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
