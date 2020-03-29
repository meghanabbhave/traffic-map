//map
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

/*class Tab2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new Text(
        "This is the map: Meghana",
        style: new TextStyle(fontSize: 25.0),
      ),
    );
  }
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyHomePage(),
    );
  }
}
*/
class Map1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var points = <LatLng>[
    new LatLng(35.22, -101.83),
    new LatLng(32.77, -96.79),
    new LatLng(29.76, -95.36),
    new LatLng(29.42, -98.49),
    new LatLng(35.22, -101.83),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new FlutterMap(
            options: new MapOptions(
                center: new LatLng(35.22, -101.83), minZoom: 5.0),
            layers: [
              new TileLayerOptions(
                  urlTemplate:
                  //"https://api.mapbox.com/styles/v1/meghanabbhave/ck8bxwh142h0w1jo6n7hkfljn.html?fresh=true&title=view&access_token=pk.eyJ1IjoibWVnaGFuYWJiaGF2ZSIsImEiOiJjazhibzN4dHYwYXRyM2RvMjgzc2JiOWltIn0.m70amAjLZDE7AdAnNUUlJw",
                  "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                  subdomains: ['a','b','c'],
                  additionalOptions: {
                    //'accessToken':
                    //'pk.eyJ1IjoibWVnaGFuYWJiaGF2ZSIsImEiOiJjazhidjB6eXYwYWV0M2VvN2lzNTVxc2NqIn0.S7IKzffvYjC40MlOYnCG9A',
                    //'id': 'mapbox.mapbox-streets-v7'
                  }
              ),
            ]
        )
    );
  }
}
