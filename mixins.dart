//First of all, what are mixins?
//Mixins are just a way of reusing a class's code in multiple class hierarchies.
//Or, in a simple way, Mixin is a tool that enable us to add features to a Class.
//To use a mixin, use the "with" keyword followed by one or more mixin names. The following examples shows two classes that use mixins:

class Musician extends Performer with Musical{
  // content
}

class Maestro extends Person with Musical, Agressive, Demented{
  String name;
  bool canConduct;
  
  Maestro(String maestroName){
    name = maestroName;
    canConduct = true;
  }
}

//When we are working with a class A and we want that this class A inherits from a Class B what we do is just use the "extends" keyword so we know
//that Class B is the parent_clas/super_class of Class A.
//But there is one problem... In Dart, as well as in many other programming languages, we can inherit from only one class. So what we do is something like this:
Class Animal{
  void move(){
    print('changed my position');  
    return;
  }
}

Class Bird extends Animal{
  @override
  void move(){
    super.move();
    print('by flying');
    return;
  }
}

Class Fish extends Animal{
  @override
  void move(){
    super.move();
    print('by swimming');
    return;
  }
}

//But what if we want to create a Class called Duck that can move by swimming and also flying? What should we do if we cannot inherit from more than one class.
//And if we were able, both these classes have the same method called move() but they are implemented in different ways. So, which one of them we would execute?
//In Dart, Mixins solve this problem.

mixin CanFly(){
  void fly(){
    print('changed my position by flywing');  
    return;
  }
}

mixin CanSwim(){
  void swim(){
    print('changed my position by swimming');  
    return;
  }
}

class Duck extends Animal with CanFly, CanSwim{
    //We added two new abilites to the Class Duck
}

