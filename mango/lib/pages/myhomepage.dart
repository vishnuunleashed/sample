import 'package:flutter/material.dart';

import '../widgets/CardsCarouselWidget.dart';
import '../widgets/DrawerWidget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<ScaffoldState> parentScaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: parentScaffoldKey,
      drawer: DrawerWidget(),
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.sort, color: Theme.of(context).hintColor),
          onPressed: () => parentScaffoldKey.currentState!.openDrawer(),
        ),
        backgroundColor: Colors.white,
        title: Text("Mango"),
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Color(0xff5ac18e),
            fontWeight: FontWeight.bold,
            fontSize: 20),
      ),
      backgroundColor: Color(0xff5ac18e),
      body: SingleChildScrollView(
          child: Column(
            children: [
              SliderWidget(),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 350,
                child: Card(
                    child: Image.asset(
                      "assets/images/put.jpg",
                      fit: BoxFit.fill,
                    )),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 56,
                child: Card(
                    child: Center(
                        child: Text(
                          "Shop By Category",
                          style: TextStyle(
                              color: Color(0xff5ac18e),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ))),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                child: Card(
                  elevation: 10,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(

                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),

                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 30

                            )
                          ],
                          color: Color(0xff5ac18e),
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                          backgroundImage:
                          AssetImage("assets/main_categories/fish.jpg"),
                          child: Text(
                            "Vegetables",
                            style: TextStyle(
                                color: Color(0xff5ac18e),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 30

                            )
                          ],
                          color: Color(0xff5ac18e),
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                          backgroundImage:
                          AssetImage("assets/main_categories/fruits.jpg"),
                          child: Text(
                            "Fruits",
                            style: TextStyle(
                                color: Color(0xff5ac18e),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 30

                            )
                          ],
                          color: Color(0xff5ac18e),
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                          backgroundImage:
                          AssetImage("assets/main_categories/meat.jpg"),
                          child: Text(
                            "Fresh Meat",
                            style: TextStyle(
                                color: Color(0xff5ac18e),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 30

                            )
                          ],
                          color: Color(0xff5ac18e),
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                          backgroundImage:
                          AssetImage("assets/main_categories/salads.jpg"),
                          child: Text(
                            "Salads",
                            style: TextStyle(
                                color: Color(0xff5ac18e),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 30

                            )
                          ],
                          color: Color(0xff5ac18e),
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                          backgroundImage:
                          AssetImage("assets/main_categories/veggies.jpg"),
                          child: Text(

                            "Fish & Seafood",

                            style: TextStyle(

                                color: Color(0xff5ac18e),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),




                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 400,
                child: Card(
                    child: Image.asset(
                      "assets/images/b1.png",
                      fit: BoxFit.fill,
                    )),
              )
            ],
          )),
    );
  }
}
