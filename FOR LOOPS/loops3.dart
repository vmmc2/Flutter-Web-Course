List<int> winningNumbers = [12, 6, 34, 22, 41, 9];


void checkNumbers(List<int> myNums){
  int matches = 0;
  for(int myNum in myNums){
    for(int winningNum in winningNumbers){
      if(myNum == winningNum){
        matches++;
      }
    }
  }
  print('You got $matches matches.');
  return;
}

void main(){
  List<int> ticket1 = [45, 2, 9, 18, 12, 33];
  List<int> ticket2 = [41, 17, 26, 32, 7, 35];
  
  checkNumbers(ticket1);
  checkNumbers(ticket2);
  return;
}
