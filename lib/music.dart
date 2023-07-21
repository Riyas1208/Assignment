import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(scaffoldBackgroundColor: Colors.black),
    debugShowCheckedModeBanner: false,
    home: MusicUi(),));

}
class MusicUi extends StatefulWidget {
  @override
  State<MusicUi> createState() => _MusicUiState();
}

class _MusicUiState extends State<MusicUi> {
  List image=[
    "assets/Icon/1159282.jpg",
    "assets/Icon/1123510.jpg",
    "assets/Icon/1305430.jpeg",
    "assets/Icon/6169144.jpg",
    "assets/Icon/1123510.jpg",
    "assets/Icon/1159282.jpg"


  ];
  int index = 0;

  Widget build(BuildContext context) {
    return Scaffold(

      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            floating: true,
            pinned: true,

            title: const Center(child: Text("Playlist",
              style: TextStyle(color: Colors.pinkAccent,fontSize: 27),)),
            bottom: AppBar(
              backgroundColor: Colors.black,
              elevation: 0,
              title: Container(width: double.infinity,
                height: 50,
                child:  TextField(
                  decoration: InputDecoration(
                    suffixIcon: IconButton(icon: Icon(Icons.search,color: Colors.pinkAccent,),
                      onPressed: () {
                        print("search");
                      },),
                    filled: true,
                    fillColor: Colors.black26,
                    hintText: "search...",
                    hintStyle: TextStyle(color: Colors.pinkAccent),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(width: 2,color: Colors.grey)),
                    enabledBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(width: 2,color: Colors.grey)),
                  ),
                ),

              ),
            ),
          ),
          SliverGrid.builder( itemCount: image.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context,index){
                return Container(margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(image[index]),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15)),
                );
              }
          ),
        ],

      ),

      // ... Your existing code ...

      bottomNavigationBar: BottomNavigationBar(
        onTap: (tapindex) {
          // Exclude the index of the "Playlist" item (2) from being selected
          if (tapindex != 2) {
            setState(() {
              index = tapindex;
            });
          }
        },
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.white),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.queue_music, color: Colors.white),
            label: "Library",
          ),
        ],
        currentIndex: index,
      ),
    );
  }
}



