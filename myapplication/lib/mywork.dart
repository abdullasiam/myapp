import 'package:flutter/material.dart';
import 'package:myapplication/dismissible.dart';
import 'package:myapplication/homepage.dart';

class Mywork extends StatelessWidget {
  const Mywork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Formwidget(),
    );
  }
}
class Formwidget extends StatefulWidget {
  const Formwidget({ Key? key }) : super(key: key);

  @override
  _FormwidgetState createState() => _FormwidgetState();
}

class _FormwidgetState extends State<Formwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wellcome to Mridul's App"),
      ),
      body: Column(
        children: [
          Text("Login",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Email or Phone",
                hintText: "Enter your email or phone",
                border: OutlineInputBorder(),
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: "password",
                hintText: "Enter your password",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ElevatedButton(onPressed: () {
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => Dismissiblewidget()));
          },
           child: Text("sign in")),
          SizedBox(
            height: 20,
          ),
        GestureDetector(
          child: Text("Forgot Password"),
          ),
        ],
      ),
    );
  }
}
