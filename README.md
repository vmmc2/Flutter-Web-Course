# Flutter-Web-Course
Flutter Web Course Assignments

## Problems when cloning a repo from GitHub and Android Studio complaining about the Dart SDK?
* The Dart SDK is under the flutter folder, more specific the path is usually the following: flutter\bin\cache\dart-sdk
* After setting the correct path described above, you should hit the button: "Get Depedencies" and everything should be ok.

## Difference between Hot Reload and Hot Restart?
* Hot Reload is just used to change the visual part (the UI) of our app. It DOES NOT affect the state/data of our app.
* Hot Restart refreshes both our visual aspects and our data/state. It is indeed used to restart our data.

## Difference between Margin and Padding?
* Margin is used for the outside of out Widget.
* Padding is used for the inside of our Widget.

## Hot Reload not working?
* Hot Reload is a tool provided by the Flutter Team which allows us to test the changes we made in our code almost simultaneously after we actually changed it.
* But Hot Reload will only work if we are dealing with Stateless or Stateful Widgets. Otherwise, it won't work properly.

## More about Hot Reload
* Hot Reload only changes the visual aspect of our app. That means that it won't lose the state of our app and neither its data.
