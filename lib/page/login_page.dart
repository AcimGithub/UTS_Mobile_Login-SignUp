import 'package:flutter/material.dart';
import 'package:login_ril/page/signup_page.dart';
import 'package:login_ril/page/splash_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return initWitget();
  }

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

@override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }


initWitget() {
  return Scaffold(
    body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(90),
                    bottomRight: Radius.circular(90)),
                color: new Color(0xffF5591F),
                gradient: LinearGradient(
                  colors: [(new Color(0xff1393aa)), (new Color(0xff1fceee))],
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(80),
                        child: Image.asset('assets/images/logo.jpg', fit: BoxFit.cover,),
                      )
                    )
                  ],
                ),
              )),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 20, right: 20, top: 70),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[300],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)),
                ]),
            child: TextField(
              controller: emailController,
              cursorColor: Color(0xff1393aa),
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.email,
                    color: Color(0xff1393aa),
                  ),
                  hintText: "email",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none),
            ),
          ),

          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 20, right: 20, top: 40),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[300],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)),
                ]),
            child: TextField(
              controller: passwordController,
              obscureText: true,
              cursorColor: Color(0xff1393aa),
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.email,
                    color: Color(0xff1393aa),
                  ),
                  hintText: "password",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none),
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: (){
              },
              child: Text(''),
            ),
          ),

          GestureDetector(

            onTap: () {
              showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                // Retrieve the text the that user has entered by using the
                // TextEditingController.
                content: Text('email: '+ emailController.text + '\n' + 'password: ' + passwordController.text),
              );
            },
          );
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20,right: 20,top: 20),
              padding: EdgeInsets.only(left: 20,right: 20),
              height: 54,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [(new Color(0xff1393aa)), (new Color(0xff1fceee))],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight
                ),
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[300],
                boxShadow: [BoxShadow(

                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: Color(0xff1393aa)
                )],
                ),
                child: Text('LOGIN',style: TextStyle(color: Colors.white),
                ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have account? "),
                GestureDetector(
                  child: Text('register now',style: TextStyle(color: Color(0xff1393aa)),),
                  onTap: (){

                    Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => SignUpPage())
                      
                    );

                  },
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
}