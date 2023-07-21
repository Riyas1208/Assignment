import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp( debugShowCheckedModeBanner: false,home: Tabbarex()));
}

class Tabbarex extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return  DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Whatsapp"),
          backgroundColor: Colors.teal,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Perform search action
              },
            ),
            IconButton(
              icon: Icon(Icons.camera_alt),
              onPressed: () {
                // Perform more options action
              },
            ),
            PopupMenuButton(itemBuilder:(context){
              return [
                PopupMenuItem(child: Text("Settings")),
                PopupMenuItem(child: Text("New Group")),
                PopupMenuItem(child: Text("Account")),
                PopupMenuItem(child: Text("Privacy")),
                PopupMenuItem(child: Text("Help"))

              ] ;
            }

            )
          ],
          bottom: TabBar(tabs: [
            Icon(Icons.people),
            Text("Chats"),
            Text("Status"),
            Text("Calls")
          ]),
        ),
        body: TabBarView(
            children:[
              Center(child: Text("Community"),),
              Center(
                child: ListView(
                  children: const [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/Icon/1159282.jpg'),
                      ),
                      title: Text('Ansila'),
                      subtitle: Text('i love you'),
                      trailing: Text('now',style: TextStyle(color: Colors.green),),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/Icon/kiran.jpg'),
                      ),
                      title: Text('kiran'),
                      subtitle: Row(
                        children: [

                          SizedBox(width: 5),
                          Icon(
                            Icons.done_all,
                            color: Colors.blue,
                            size: 16,
                          ),
                          Text('itachi vannind'),
                        ],
                      ),
                      trailing: Text('8:00 AM'),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/Icon/ayoob.jpg'),
                      ),
                      title: Text('Ayoob'),
                      subtitle: Row(
                        children: [

                          SizedBox(width: 5),
                          Icon(
                            Icons.done_all,
                            color: Colors.blue,
                            size: 16,
                          ),
                          Text('ijjj evede'),

                        ],
                      ),
                      trailing: Text('8:02 AM'),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/Icon/6169144.jpg'),
                      ),
                      title: Text('Musthafa'),
                      subtitle: Row(
                        children: [

                          SizedBox(width: 5),
                          Icon(
                            Icons.done_all,
                            // color: Colors.white54,
                            size: 16,
                          ),
                          Text('pes kalikkan indo'),
                        ],
                      ),
                      trailing: Text('8:02 AM'),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/Icon/shibin.jpg'),
                      ),
                      title: Text('Shibin'),
                      subtitle: Text('padath vellam kerikkin njan classin varanilla'),
                      trailing: Text('8:05 AM',style: TextStyle(color: Colors.green)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/Icon/ubaid.jpeg'),
                      ),
                      title: Text('Ubaid'),
                      subtitle: Text('send'),
                      trailing: Text('yesterday',style: TextStyle(color: Colors.green)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/Icon/1305430.jpeg'),
                      ),
                      title: Text('Sneha'),
                      subtitle: Text('Typing...',style: TextStyle(color: Colors.green)),
                      trailing: Text('yesterday',),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/Icon/sreeraj.jpg'),
                      ),
                      title: Text('Sreeraj'),
                      subtitle: Row(
                        children: [

                          SizedBox(width: 5),
                          Icon(
                            Icons.check,
                            // color: Colors.white54,
                            size: 16,
                          ),
                          Text('evede aaada'),
                        ],
                      ),
                      trailing: Text('yesterday'),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/Icon/1123510.jpg'),
                      ),
                      title: Text('Shameema'),
                      subtitle: Text('Hello',),
                      trailing: Text('yesterday',style: TextStyle(color: Colors.green)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/Icon/rohan.jpg'),
                      ),
                      title: Text('Rohan'),
                      subtitle: Row(
                        children: [

                          SizedBox(width: 5),
                          Icon(
                            Icons.check,
                            // color: Colors.white54,
                            size: 16,
                          ),
                          Text('pes kalikkan indo'),
                        ],
                      ),
                      trailing: Text('yesterday'),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/Icon/anzil.jpg'),
                      ),
                      title: Text('Anzil'),
                      subtitle: Row(
                        children: [
                          Text('hi'),
                          SizedBox(width: 5),
                          Icon(
                            Icons.check,
                            // color: Colors.white54,
                            size: 16,
                          ),
                        ],
                      ),
                      trailing: Text('Yesterday'),
                    ),
                    // Add more ListTile widgets for additional chats
                  ],
                ),
              ),
              Center(child: Text(""),),
              Center(child: Text(""),),
              Center(child: Text(""),),
            ] ),

      ),
    );
  }
}