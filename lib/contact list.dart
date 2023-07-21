import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: ContactPage(),));
}
class ContactPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Contact List")),
      body: ListView(
        children: [


          Card(
            child: ListTile(
              leading: Image.asset("assets/Icon/1.png"),
              title: Text("Ayoob"),
              subtitle: Text("6238908818"),
              trailing: Icon(Icons.navigate_next),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset("assets/Icon/2.png"),

              title: Text("Kiran"),
              subtitle: Text("9633995810"),
              trailing: Icon(Icons.navigate_next),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset("assets/Icon/3.png"),
              title: Text("Avinash"),
              subtitle: Text("8281385318"),
              trailing: Icon(Icons.navigate_next),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset("assets/Icon/1.png"),
              title: Text("Shibin"),
              subtitle: Text("6854465875"),
              trailing: Icon(Icons.navigate_next),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset("assets/Icon/2.png"),

              title: Text("Ubaid"),
              subtitle: Text("9454787810"),
              trailing: Icon(Icons.navigate_next),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset("assets/Icon/3.png"),
              title: Text("Sreeraj"),
              subtitle: Text("9854784545"),
              trailing: Icon(Icons.navigate_next),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset("assets/Icon/1.png"),
              title: Text("Nadheer"),
              subtitle: Text("6845788818"),
              trailing: Icon(Icons.navigate_next),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset("assets/Icon/2.png"),

              title: Text("Anzil"),
              subtitle: Text("9124578810"),
              trailing: Icon(Icons.navigate_next),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset("assets/Icon/3.png"),
              title: Text("Akash"),
              subtitle: Text("8457845418"),
              trailing: Icon(Icons.navigate_next),
            ),
          ),
        ],
      ),
    );
  }
}