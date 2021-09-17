import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: FlutterCard(),
));

class FlutterCard extends StatefulWidget {
  @override
  State<FlutterCard> createState() => _FlutterCardState();
}

class _FlutterCardState extends State<FlutterCard> {
  int flutterLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade900,
      appBar: AppBar(
        title: Text('Flutter Profile ID Card'),
        centerTitle: true,
        backgroundColor: Colors.green.shade800,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState((){
            flutterLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green.shade900,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/Stary_Nights.png'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.green.shade600,
            ),
            Text(
          'NAME',
          style: TextStyle(
          color: Colors.green,
        letterSpacing: 2.0,
        ),
      ),
            SizedBox(height: 10.0),
            Text(
          'Chandra Kiran Verma',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 2.0,
            fontSize: 30,
            fontWeight: FontWeight.bold
         ),
       ),
            SizedBox(height: 30.0),
            Text(
              'Flutter Coding Level',
              style: TextStyle(
                color: Colors.green,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$flutterLevel',
              style: TextStyle (
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.green.shade400,
                ),
                SizedBox(width: 10.0),
                Text(
                  'chandra123@gmail.com',
                  style: TextStyle(
                    color: Colors.green.shade400,
                  )
                )
              ]
            )
       ],
      ),
      ),
    );
  }
}
