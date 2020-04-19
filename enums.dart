enum CarType{
  hatchback,
  SUV,
  convertible,
  coupe,
}

class Car{
  CarType carStyle;
  
  Car({@required this.carStyle});
}

void main(){

  Car myCar = Car(carStyle: CarType.convertible);

  return;
}

//Keep in mind that the use of enums(enumeration) makes the code a lot cleaner and readable.
