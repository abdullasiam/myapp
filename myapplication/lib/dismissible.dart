import 'package:flutter/material.dart';
class Dismissiblewidget extends StatefulWidget {
  const Dismissiblewidget({ Key? key }) : super(key: key);

  @override
  _DismissiblewidgetState createState() => _DismissiblewidgetState();
}

class _DismissiblewidgetState extends State<Dismissiblewidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dismissiblewidget"),




        ),
        body: ListView(
         children: [
         Dismissible(key: ValueKey("A"),
         secondaryBackground: Container(
           color: Colors.green,
           child: Icon(
             Icons.delete,
             size: 30,

           ),
         ),
         background: Container(
           color:Colors.red,
           child: Icon(
             Icons.delete,
             size: 30,
           ),
         ),
          child: ListTile(
            leading: Icon(Icons.person),
            trailing: Icon(Icons.person),
            title: Text("Rocket"),

            subtitle: Text("Your rocket account is disabled"),
          ),
          ), 
           Dismissible(key: ValueKey("A"),
         secondaryBackground: Container(
           color: Colors.green,
           child: Icon(
             Icons.delete,
             size: 30,

           ),
         ),
         background: Container(
           color:Colors.red,
           child: Icon(
             Icons.delete,
             size: 30,
           ),
         ),
          child: ListTile(
            leading: Icon(Icons.person),
            trailing: Icon(Icons.person),
            title: Text("Rocket"),

            subtitle: Text("Your bikas account is disabled"),
          ),
           ), Dismissible(key: ValueKey("A"),
         secondaryBackground: Container(
           color: Colors.green,
           child: Icon(
             Icons.delete,
             size: 30,

           ),
         ),
         background: Container(
           color:Colors.red,
           child: Icon(
             Icons.delete,
             size: 30,
           ),
         ),
          child: ListTile(
            leading: Icon(Icons.person),
            trailing: Icon(Icons.person),
            title: Text("Rocket"),

            subtitle: Text("Your bikas account is disabled"),
          ),
           ), Dismissible(key: ValueKey("A"),
         secondaryBackground: Container(
           color: Colors.green,
           child: Icon(
             Icons.delete,
             size: 30,

           ),
         ),
         background: Container(
           color:Colors.red,
           child: Icon(
             Icons.delete,
             size: 30,
           ),
         ),
          child: ListTile(
            leading: Icon(Icons.person),
            trailing: Icon(Icons.person),
            title: Text("Rocket"),

            subtitle: Text("Your bikas account is disabled"),
          ),
           ), Dismissible(key: ValueKey("A"),
         secondaryBackground: Container(
           color: Colors.green,
           child: Icon(
             Icons.delete,
             size: 30,

           ),
         ),
         background: Container(
           color:Colors.red,
           child: Icon(
             Icons.delete,
             size: 30,
           ),
         ),
          child: ListTile(
            leading: Icon(Icons.person),
            trailing: Icon(Icons.person),
            title: Text("Rocket"),

            subtitle: Text("Your bikas account is disabled"),
          ),
           ), Dismissible(key: ValueKey("A"),
         secondaryBackground: Container(
           color: Colors.green,
           child: Icon(
             Icons.delete,
             size: 30,

           ),
         ),
         background: Container(
           color:Colors.red,
           child: Icon(
             Icons.delete,
             size: 30,
           ),
         ),
          child: ListTile(
            leading: Icon(Icons.person),
            trailing: Icon(Icons.person),
            title: Text("Rocket"),

            subtitle: Text("Your bikas account is disabled"),
          ),
           ), Dismissible(key: ValueKey("A"),
         secondaryBackground: Container(
           color: Colors.green,
           child: Icon(
             Icons.delete,
             size: 30,

           ),
         ),
         background: Container(
           color:Colors.red,
           child: Icon(
             Icons.delete,
             size: 30,
           ),
         ),
          child: ListTile(
            leading: Icon(Icons.person),
            trailing: Icon(Icons.person),
            title: Text("Rocket"),

            subtitle: Text("Your bikas account is disabled"),
          ),
           ),
           ],
          
        ),
      ),
      
    );
  }
}
