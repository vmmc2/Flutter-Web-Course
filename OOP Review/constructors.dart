/*                THIS IS A WAY OF ELABORATING A CLASS                   */
class Human{
  double height;
  int age = 0;
  
  Human({double height, int age}){
    this.height = height;
    this.age = age;
  }
  
  void getOld(int years){
    this.age = this.age + years;
  }
  
}

void main(){
  Human victor = Human(height: 1.80, age: 21);
  print(victor.height);
  return;
}

/*************************************************************************/
/*            THIS IS A BETTER WAY OF ELABORATING A CLASS                */
/************** this way uses what we call of syntatic sugar *************/
class Human{
  double height;
  int age = 0;
  
  Human({this.height, this.age});
  
  void getOld(int years){
    this.age = this.age + years;
  }
  
}

void main(){
  Human ana = Human(height: 1.65, age: 25);
  print(ana.height);
  return;
}
