import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(bottomNavigation());

class bottomNavigation extends StatefulWidget {
  bottomNavigation({Key key}) : super(key: key);

  @override
  _bottomNavigationState createState() => _bottomNavigationState();
}

class _bottomNavigationState extends State<bottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
    
        appBar: AppBar(
          backgroundColor: Colors.green[200],
      
          title: Text("BottomNav", style: TextStyle(color: Colors.black)),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.amberAccent,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Bottom Navigation ",
                  style: TextStyle(color: Colors.black,fontSize: 33),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          color: Colors.greenAccent,
          backgroundColor: Colors.amberAccent,
          buttonBackgroundColor: Colors.greenAccent,
          height: 65,
          items: <Widget>[
            Icon(Icons.school, size: 20, color: Colors.black),
            Icon(Icons.add_box, size: 20, color: Colors.black),
            Icon(Icons.compare_arrows, size: 20, color: Colors.black),
            Icon(Icons.exit_to_app, size: 20, color: Colors.black),
            Icon(Icons.favorite, size: 20, color: Colors.black),

          ],
          onTap: (index) {
            print('u are on the $index icon ');
          },
        ),
      ),
    );
  }
}
