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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("BottomNav",style: TextStyle(color: Colors.black)),
        
      ),
      body: Container(
        color: Colors.deepOrange,
   
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Bottom Navigation ",style: TextStyle(
              color: Colors.white
            ),)
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: <Widget>[
          Icon(Icons.school,size: 20,color: Colors.black),
          Icon(Icons.school,size: 20,color: Colors.black),
          Icon(Icons.school,size: 20,color: Colors.black),
        ],
      ),
    );
  }
}

