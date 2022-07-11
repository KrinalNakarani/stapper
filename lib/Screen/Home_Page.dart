import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  dynamic i = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Stapper App"),
          backgroundColor: Colors.redAccent,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Stepper(
            currentStep: i,
            onStepTapped: (ps) {
              setState(() {
                i = ps;
              });
            },
            onStepContinue: () {
              setState(() {
                if (i < 2) {
                  i++;
                }
              });
            },
            onStepCancel: () {
              setState(() {
                if (i > 0) {
                  i--;
                }
              });
            },
            steps: [
              Step(
                title: Text("Signup",style: TextStyle(fontSize: 20),),
                content: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.person), label: Text("Full Name")),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.mail), label: Text("E-mail ID")),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.lock_outline),
                          label: Text("Password")),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.lock),
                          label: Text("Confirm Password")),
                    ),
                  ],
                ),
              ),
              Step(
                title: Text("Login",style: TextStyle(fontSize: 20),),
                content: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        label: Text("User Name")
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        label: Text("Password")
                      ),
                    ),
                  ],
                ),
              ),
              Step(
                title: Text("Home",style: TextStyle(fontSize: 20),),
                content: Container(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
