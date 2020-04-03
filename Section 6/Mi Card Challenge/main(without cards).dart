import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
}

//Now that we have a stateless widget(it could also be a stateful widget)
//we can use the Hot Reload tool.
class MyApp extends StatelessWidget {
  @override
  //The build() method is called whenever we build a new version of this
  //widget (the MyApp widget).
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        //The Container() widget is used to position and resize other
        //widget inside of it. This Container() widget works like a
        // <div> </div> from HTML. And it only supports one child widget
        body: SafeArea(
          //Para obter informacoes sobre um Widget, como por exemplo seus
          //atributos e funcoes, basta a gente clicar nele com o mouse e dar o
          //comando "CTRL+Q".
          child: Column(
            children: <Widget>[
              SizedBox(height: 160.0),
              Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage('https://i.pinimg.com/originals/82/9b/79/829b79476d0469ca6f36112908b823ef.jpg'),
                  radius: 75.0,
                ),
              ),
              Text(
                'Son Goku',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Source Sans',
                  fontSize: 18.0,
                  color: Colors.teal[100],
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      size: 50.0,
                      color: Colors.teal,
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      '+55 4002-8922',
                      style: TextStyle(
                        color: Colors.teal[900],
                        fontSize: 20.0,
                        fontFamily: 'Source Sans'
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2.0),
              Container(
                margin: EdgeInsets.all(10.0),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      size: 50.0,
                      color: Colors.teal,
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      'son_goku@saiyajin.com.jp',
                      style: TextStyle(
                        color: Colors.teal[900],
                        fontSize: 20.0,
                        fontFamily: 'Source Sans',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
