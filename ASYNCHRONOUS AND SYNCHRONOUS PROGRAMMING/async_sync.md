# ABOUT SYNCHRONOUS AND ASYNCHRONOUS PROGRAMMING

## Consider the following example of code written in Dart below...
```dart
void aFunction(){
  //Step 1
  print('Hello World');
  //Step 2
  syncLoad('image from NASA');
  //Step 3
  print('Hello Jupiter');
  return;
}
```
* The code above is being executed normally from top to bottom. Which means that, first of all we execute that print statement. After that we execute the function called "syncLoad" that loads an image from NASA database. And by the end, we execute the final print statement. Now, we have to bear in mind that the second step takes a lot of time because we are loading a huge image from a database. So, the first print statement will be shown in the console almost immediatly, then we will have to wait a lot for this particular image to be loaded and finally the last print statement will be also shown almost immediatly.
* This is what we call syncronous programming. Everything happens in syncrony. First we execute Step 1, then we execute Step 2 and, finally, we execute Step 3.

## Now consider the example of code below, which was also written in Dart...
```dart
void aFunction(){
  //Step 1
  print('Hello World');
  //Step 2
  asyncLoad('image from NASA');
  //Step 3
  print('Hello Jupiter');
  return;
}
```
* First of all, note that now we are calling a function named "asyncLoad", which means that this function will be executed in an asynchronous way. But what does that really mean? It means that we execute the Step 1, then we start execute the Step 2 but we do not have to wait for the Step 2 to be finished. While, we are loading our image from the NASA database we can already proceed to our next step, which is Step 3 and we can execute it. So, in other words, what we do is call our print statement, printing to the console the string "Hello Jupiter".

