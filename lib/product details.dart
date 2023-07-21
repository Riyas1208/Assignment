import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(debugShowCheckedModeBanner: false,home: products()));
}
class products extends StatelessWidget{
  const products({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: const Text("Product List"),
        actions: [
          Icon(Icons.shopping_cart)
        ],

      ),
      body: ListView(
        children:  [
          Card(
            child: ListTile(
                minVerticalPadding: 20,
                tileColor: Colors.blueGrey,
                leading: Image.asset("assets/Icon/apple.png"),
                //title: Text( 'Name :  Apple', style: TextStyle(fontWeight: FontWeight. bold), ),
                title: const Text.rich(
                  TextSpan(
                    text: 'Name :',
                    children: <TextSpan>[
                      TextSpan(text: 'Apple', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                subtitle: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: 'Unit :',
                        children: <TextSpan>[
                          TextSpan(text: 'Kg', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        text: 'Price :',
                        children: <TextSpan>[
                          TextSpan(text: '\$20', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
                trailing: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black54),
                    child: const Text('Add to cart'))
            ),
          ),
          Card(
            child: ListTile(
                minVerticalPadding: 20,
                tileColor: Colors.blueGrey,
                leading: Image.asset("assets/Icon/orange.png"),
                //title: Text( 'Name :  Apple', style: TextStyle(fontWeight: FontWeight. bold), ),
                title: const Text.rich(
                  TextSpan(
                    text: 'Name :',
                    children: <TextSpan>[
                      TextSpan(text: 'Orange', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                subtitle: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: 'Unit :',
                        children: <TextSpan>[
                          TextSpan(text: 'Doz', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        text: 'Price :',
                        children: <TextSpan>[
                          TextSpan(text: '\$30', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
                trailing: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black54),
                    child: const Text('Add to cart'))
            ),
          ),
          Card(
            child: ListTile(
                minVerticalPadding: 20,
                tileColor: Colors.blueGrey,
                leading: Image.asset("assets/Icon/bananas.png"),
                //title: Text( 'Name :  Apple', style: TextStyle(fontWeight: FontWeight. bold), ),
                title: const Text.rich(
                  TextSpan(
                    text: 'Name :',
                    children: <TextSpan>[
                      TextSpan(text: 'Banana', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                subtitle: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: 'Unit :',
                        children: <TextSpan>[
                          TextSpan(text: 'Doz', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        text: 'Price :',
                        children: <TextSpan>[
                          TextSpan(text: '\$10', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
                trailing: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black54),
                    child: const Text('Add to cart'))
            ),
          ),

        ],
      ),
    );
  }
}