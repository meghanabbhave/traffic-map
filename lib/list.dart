import 'package:flutter/material.dart';
import './incident.dart';


class IncidentList2 extends StatefulWidget {
  @override
  _IncidentListState createState() => _IncidentListState();
}

class _IncidentListState extends State<IncidentList2> {

  List<Incident> incidents = [
    Incident(location: 'Center St.', text: '1/14/2020 at 6:00 P.M'),
    Incident(location: 'Park St.', text: '2/23/2020 at 11:00 P.M'),
    Incident(location: 'Maple St.', text: '3/04/2020 at 9:00 A.M'),
    Incident(location: 'Elmar St.', text: '2/09/2020 at 11:00 A.M'),
    Incident(location: 'Long St.', text: '3/04/2020 at 4:00 P.M'),
    Incident(location: 'Source', text: 'https://apps.alexandriava.gov/CrimeReport/' ),
  ];

  Widget incidentTemplate(incident){
    return Card(
      margin: EdgeInsets.fromLTRB(110.0, 20.0, 20.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
                incident.text,
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black
                )
            ),
            SizedBox(height: 8.0),
            Text(
                incident.location,
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black
                )
            ),
            ],),
        ),
      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Dates and Times of Incidents'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: incidents.map((incident) => incidentTemplate(incident)).toList(),
        )
    );
  }
}