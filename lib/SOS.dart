import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sosPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
        home: new DatePage(),
        theme : new ThemeData(
            primarySwatch: Colors.blue
        )
    );
  }
}

class DatePage extends StatefulWidget{
  @override
  State createState() => new DatePageState();
}

class DatePageState extends State<DatePage> with SingleTickerProviderStateMixin{

  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

  @override
  void initState(){
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this,
        duration: new Duration(milliseconds: 500)
    );
    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController,
        curve: Curves.easeOut
    );
    _iconAnimation.addListener(()=> this.setState((){}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.black,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/sos.webp"),
            fit: BoxFit.cover,
            color: Colors.black,
            colorBlendMode: BlendMode.darken,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              /*
              new Image(
                image: new AssetImage("assets/tolf.png"),
                width: _iconAnimation.value * 100,
              ),
              */
              new Form(
                child: new Theme(
                  data: new ThemeData(
                      brightness: Brightness.dark, primarySwatch: Colors.teal,
                      inputDecorationTheme: new InputDecorationTheme(
                          labelStyle: new TextStyle(
                              color: Colors.teal, fontSize: 16.0
                          )
                      )),
                  child: new Container(
                    padding: const EdgeInsets.all(40.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Fill out date of incident",
                          ),
                          keyboardType: TextInputType.text,
                        ),
                        new TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Fill out time of incident",
                          ),
                          keyboardType: TextInputType.text,
                        ),
                        new TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Other Important Details",
                          ),
                          keyboardType: TextInputType.text,
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                        ),
                        new RaisedButton(
                          color: Colors.teal,
                          textColor: Colors.white,
                          child: new Text("Submit"),
                          onPressed: () => {},
                          splashColor: Colors.red,
                        ),
                      ],
                    ),
                  ),
                ),

              )
            ],
          )
        ],
      ),
    );
  }
}
