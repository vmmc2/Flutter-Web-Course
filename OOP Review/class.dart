// When we are working with classes, we should name it with the initial letter being a Capital letter.
//Then we are defining its property/members and methods, we should use the cammelcase convention.

class Car{
  int numberOfDoors = 5;
  
  void drive(){
    print("Wheels start turning!");
  }
};

class Human{
  //Properties/Members
  double height;
  int age = 0;
  
  //Constructor
  Human({double myHeight}){
    this.height = myHeight;
  }
  
  //Methods
  void talk(String whatToSay){
    print(whatToSay);
  }
  
}

void main(){
  Human Jen = Human(myHeight: 34.0);
  print(Jen.height);
  return 0;
}

