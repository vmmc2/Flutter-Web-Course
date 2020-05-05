//First of all, what are mixins?
//Mixins are just a way of reusing a class's code in multiple class hierarchies.
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
