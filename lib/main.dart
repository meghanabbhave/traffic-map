import 'package:flutter/material.dart';
import 'package:hackathonapplication/Map.dart';
import 'package:hackathonapplication/SOS.dart';
import './SOS.dart';
import './list.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final tabController = new DefaultTabController(
        length: 3,
        child: new Scaffold(
          appBar: new AppBar(
            title: const Text('Trafficking Alert App'),
            bottom: new TabBar(tabs: [
              new Tab(icon: new Icon(Icons.home), text: 'home'),
              new Tab(icon: new ImageIcon(new AssetImage("assets/sos1.png"),), text: "SOS"),
              new Tab(icon: new Icon(Icons.dehaze), text:'List of Incidents'),
            ]),
          ),
          body: new TabBarView(
            children: <Widget>[
              Container(
                  alignment: Alignment(0, 0),
                  child: HomePage()
              ),
              Container(
                  alignment: Alignment(0, 0),
                  child: SOSRoute()
              ),
              Container(
                  alignment: Alignment(0, 0),
                  child: IncidentList2()
                ),
              ],
          ),
        )
    );
    return new MaterialApp(
      title: 'Human Trafficking App',
      home: tabController
    );
  }
}
class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(icon: ImageIcon(AssetImage("assets/mapicon.png"),
                  color: Colors.red,
                  size: 60
              ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Map()),
                  );
                },),
              IconButton(icon: ImageIcon(AssetImage("assets/homebutton.png"),
                  color: Colors.black,
                  size: 60),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
              ),
              IconButton(icon: ImageIcon(AssetImage("assets/aboutus.png"),
                  color: Colors.blue,
                  size: 60),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute()),
                  );
                },),
            ],
          ),
        ),
        body:
        Stack(
          children: <Widget>[
            Container(
                alignment: Alignment(0, -0.8),
                child: Text(
                  "All Information about TOLF can be found on our Website:",
                  style: new TextStyle(
                    fontSize: 20.0,
                  ),
                )
            ),
            Container(
                alignment: Alignment(0, -0.6),
                child: Text("https://www.touchoflifefnd.org",
                  style: new TextStyle(
                    fontSize: 20.0,
                  ),
                )
            ),
            Container(
              alignment: Alignment(0, 0),
              child: Image(
                image: AssetImage("assets/tolflogo1.jpg"),
                width: 500,
                height: 500,
                fit: BoxFit.scaleDown,
                alignment: Alignment(0, 0),
                excludeFromSemantics: true,
              ),
            )
          ],
        )
    );
  }
}
class IncidentList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List of Incidents"),
      ),
      bottomNavigationBar: BottomAppBar(
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(icon: ImageIcon(AssetImage("assets/mapicon.png"),
                color: Colors.red,
                size: 60
            ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Map()),
                );
              },),
            IconButton(icon: ImageIcon(AssetImage("assets/homebutton.png"),
                color: Colors.black,
                size: 60),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
            IconButton(icon: ImageIcon(AssetImage("assets/aboutus.png"),
                color: Colors.blue,
                size: 60),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },),
          ],
        ),
      ),
      body: Center(
          child: IncidentList()
      )

    );
  }
}
class Map extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
        //title: Text("Map of Incidents"),
      //),
      bottomNavigationBar: BottomAppBar(
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(icon: ImageIcon(AssetImage("assets/mapicon.png"),
                color: Colors.red,
                size: 60
            ),
              onPressed: () {},),
            IconButton(icon: ImageIcon(AssetImage("assets/homebutton.png"),
                color: Colors.black,
                size: 60),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
            IconButton(icon: ImageIcon(AssetImage("assets/aboutus.png"),
                color: Colors.blue,
                size: 60),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },),
          ],
        ),
      ),
      body: Center(
          child: Map1()
      ),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}
class HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
            title: const Text('Trafficking Alert App'),
            actions: <Widget>[
              Image(
                image: AssetImage("assets/tolflogo1.jpg"),
                width: 55,
                height: 55,
                fit: BoxFit.scaleDown,
                alignment: Alignment(0, -0.95),
                excludeFromSemantics: true,
              ),
            ]
        ),
        backgroundColor: Colors.blueAccent,
        bottomNavigationBar: BottomAppBar(
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(icon: ImageIcon(AssetImage("assets/mapicon.png"),
                  color: Colors.red,
                  size: 60
              ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Map()),
                  );
                },),
              IconButton(icon: ImageIcon(AssetImage("assets/homebutton.png"),
                  color: Colors.black,
                  size: 60),
                onPressed: () {},
              ),
              IconButton(icon: ImageIcon(AssetImage("assets/aboutus.png"),
                  color: Colors.blue,
                  size: 60),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute()),
                  );
                },),
            ],
          ),
        ),
        body: new Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image(image: AssetImage("assets/testimage.jpg"),
                fit: BoxFit.cover,
                color: Colors.black87,
                colorBlendMode: BlendMode.darken,
              ),
              Container(
                child:
                Text("Any Emergency: Call 911, National Human Trafficking HOTLINE: Text 233733, Report missing children or child pornography to the National Center for Missing and Exploited Children (NCMEC) at 1-800-THE-LOST (843-5678) ", style: new TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                )
                ),
                ),
              ],
        ),
      );
  }
}
class SOSRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SOS Page"),
        ),
        bottomNavigationBar: BottomAppBar(
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(icon: ImageIcon(AssetImage("assets/mapicon.png"),
                  color: Colors.red,
                  size: 60
              ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Map()),
                  );
                },),
              IconButton(icon: ImageIcon(AssetImage("assets/homebutton.png"),
                  color: Colors.black,
                  size: 60),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
              ),
              IconButton(icon: ImageIcon(AssetImage("assets/aboutus.png"),
                  color: Colors.blue,
                  size: 60),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute()),
                  );
                },),
            ],
          ),
        ),
        body:
        Stack(
            children: <Widget>[
              Center(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Text("Submit"),

                ),

              ),
              Container(
                  alignment: Alignment(0, -0.5),
                  child: sosPage()
              )
            ]
        )
    );
  }
}