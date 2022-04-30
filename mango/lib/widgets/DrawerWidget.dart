import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {


  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {


  @override
  void initState() {


    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[

          ListTile(
            
            title: Image.asset("assets/images/logo.png")
          ),

          ListTile(
            onTap: () {

            },
            leading: Icon(
              Icons.home,
              color: Colors.black.withOpacity(0.5),
            ),
            title: Text(
              "Home",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            onTap: () {

            },
            leading: Icon(
              Icons.local_mall,
              color: Colors.black.withOpacity(0.5),
            ),
            title: Text(
              "My Orders",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            onTap: () {

            },
            leading: Icon(
              Icons.shopping_cart,
              color: Colors.black.withOpacity(0.5),
            ),
            title: Text(
              "My Cart",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            onTap: () {


            },
            leading: Icon(
              Icons.settings,
              color: Colors.black.withOpacity(0.5),
            ),
            title: Text(
             "Settings",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            onTap: () {

                exit(0);
            },
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.black.withOpacity(0.5),
            ),
            title: Text(
              "Log Out",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
