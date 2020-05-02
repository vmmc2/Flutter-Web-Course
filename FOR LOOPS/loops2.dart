List<String> fruits = [
  'apple',
  'banana',
  'grape',
  'orange',
  'pear',
];

void makePies(){
  for(String fruit in fruits){
      print(fruit + ' pie');
  }
}

void main(){
  makePies();
  return;
}
