import 'package:flutter/material.dart';
import 'package:mango/pages/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool hide = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
                colors: [
                  Color(0x665ac18e),
                  Color(0x995ac18e),
                  Color(0xcc5ac18e),
                  Color(0xff5ac18e),
                ]
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 200,),
              Image.asset("assets/images/login_logo.png"),
              SizedBox(height: 50,),

              SizedBox(height: 10,),
              Padding(

                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(10),
                  child: TextFormField(

                    style: TextStyle(color: Colors.black),
                    maxLines: 1,
                    keyboardType: TextInputType.emailAddress,
                    onSaved: (val) {

                    },
                    validator: (input) => !input!.contains('@')
                        ? "Should be valid E-mail"
                        : null,

                    decoration: InputDecoration(
                      label: Text("Email"),

                      labelStyle: TextStyle(color:Colors.black,),
                      errorStyle: TextStyle(height: 0.1),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      hintText: 'johndoe@gmail.com',
                      hintStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w300),
                      prefixIcon:
                      Icon(Icons.mail, color: Color(0xff5ac18e)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.white)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.white)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(10),
                  child: TextFormField(
                    obscureText: hide,
                    style: TextStyle(color: Colors.black),
                    maxLines: 1,
                    keyboardType: TextInputType.name,
                    onSaved: (val) {

                    },
                    validator: (input) => input!.length < 3
                        ? "Should be more than 3 characters"
                        : null,
                    decoration: InputDecoration(
                      label: Text("Password"),
                      labelStyle: TextStyle(color:Colors.black,),
                      filled: true,
                      fillColor: Colors.white,
                      errorStyle: TextStyle(height: 0.1),
                      suffixIcon: IconButton(
                        color: Colors.black,
                        onPressed: () {
                          setState(() {
                            hide = !hide;
                          });
                        },
                        icon: Icon(hide == true
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                      contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      hintText: '••••••••••••',
                      hintStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                      prefixIcon:
                      Icon(Icons.lock, color: Color(0xff5ac18e)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.white)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.white)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 45,
                width: MediaQuery.of(context).size.width-20,
                child: ElevatedButton(

                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                      elevation: 20,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),

                  onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
                    },
                  child: Text(
                    "Login",
                    style: TextStyle(color: Color(0xff5ac18e),fontWeight: FontWeight.bold,fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
