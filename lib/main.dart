import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

void main() => runApp(bottomNavigation());

class bottomNavigation extends StatefulWidget {
  @override
  _bottomNavigationState createState() => _bottomNavigationState();
}

class _bottomNavigationState extends State<bottomNavigation> {
  int _page = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.tealAccent,

        //   title: Text("BottomNavigation", style: TextStyle(color: Colors.black)),
        //   centerTitle: true,
        // ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Shimmer.fromColors(
                    child: Text(
                      "Bottom Navigation  $_page ",
                      style: TextStyle(color: Colors.black, fontSize: 33),
                    ),
                    baseColor: Colors.red,
                    highlightColor: Colors.yellow)

                /* Center(
                  child: Center(
                      child: Center(
                    child: Shimmer.fromColors(
                      child: Text(
                        'Shimmer',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      baseColor: Colors.red,
                      highlightColor: Colors.yellow,
                    ),
                  )),
                )*/
              ],
            ),
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          color: Colors.greenAccent,
          backgroundColor: Colors.lightBlue,
          buttonBackgroundColor: Colors.tealAccent,
          height: 55,
          items: <Widget>[
            Icon(Icons.school, size: 20, color: Colors.black),
            Icon(Icons.favorite, size: 20, color: Colors.black),
            Icon(Icons.compare_arrows, size: 30, color: Colors.black),
            Icon(Icons.call_split, size: 30, color: Colors.black),
            Icon(Icons.perm_identity, size: 30, color: Colors.black),
          ],
          animationDuration: Duration(milliseconds: 500),
          index: 2,
          animationCurve: Curves.easeInOutCirc,
          onTap: (index) {
            setState(() {
              _page = index;
            });
            print('u are on the $index icon ');
          },
        ),
      ),
    );
  }
}
