class Car{
  int numberOfSeats = 5;
  
  void drive(){
    print("Wheels are turning!");
  }
}

//Exemplo de heranca.. a classe ElectricCar herda a classe(superclasse) Car.
class ElectricCar extends Car{
  int batteryLevel = 100;
  
  void recharge(){
    batteryLevel = 100;
  }
}
