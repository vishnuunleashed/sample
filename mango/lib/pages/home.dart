
import 'package:flutter/material.dart';



import 'myhomepage.dart';

class Home extends StatefulWidget {
  dynamic currentTab = 1;
  Widget currentPage = MyHomePage();

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  initState(){
    _selectTab(widget.currentTab);
  }

  void _selectTab(int tabItem) {
    setState(() {
      widget.currentTab = tabItem;
      switch (tabItem) {
        case 0:
          Container(child: Text("Coming Soon"),);
          break;
        case 1:
          widget.currentPage = MyHomePage();
          break;
        case 2:
          Container(child: Text("Coming Soon"),);
          break;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: widget.currentPage,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xff5ac18e),
          selectedFontSize: 0,
          unselectedFontSize: 0,
          iconSize: 22,
          elevation: 0,
          backgroundColor: Colors.white70,
          selectedIconTheme: IconThemeData(size: 28),
          unselectedItemColor: Theme.of(context).focusColor.withOpacity(1),
          currentIndex: widget.currentTab,
          onTap: (int i) {
            this._selectTab(i);
          },
          // this will be set when a new tab is tapped
          items: [

            BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              label: " ",

            ),
            BottomNavigationBarItem(

              icon: Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  color: Color(0xff5ac18e),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                  boxShadow: [
                    BoxShadow(color: Colors.white.withOpacity(0.4), blurRadius: 40, offset: Offset(0, 15)),
                    BoxShadow(color: Colors.white.withOpacity(0.4), blurRadius: 13, offset: Offset(0, 3))
                  ],
                ),
                child: new Icon(Icons.home, color: Colors.black),
              ),
              label: " ",),
            BottomNavigationBarItem(
              icon: new Icon(Icons.local_mall),
              label: " ",

            ),

          ],
        ),


      ),
    );
  }
}
