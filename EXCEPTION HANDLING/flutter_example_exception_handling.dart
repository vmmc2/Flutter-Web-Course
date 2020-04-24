//Let's say that we are inside a Flutter widget.
//And inside of it we some code and, finally, we have our build() method described below:

//...
//...
//...

@override
Widget build(BuildContext context){
  String myMargin = 'abc';
  double myMarginAsDouble; //initially, this has the value 'null;
  
  try{
    myMarginAsDouble = double.parse(myMargin);
  }catch(e){
    //If we find an error/exception, then we print what was the error that we received and
    //we assign a default value to the variable myMarginAsDouble (let's say that this value is 30.0)
    print(e);
    myMarginAsDouble = 30;
  }

  return Scaffold(
    body: Container(
      margin: EdgeInsets.all(myMarginAsDouble),
      color: Colors.red,
    ),
  );
}
