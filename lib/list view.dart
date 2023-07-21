import 'package:flutter/material.dart';

class Item {
  final String title;
  final String description;

  Item(this.title, this.description);
}

class ListViewScreen extends StatelessWidget {
  final List<Item> items = [
    Item('Item 1', 'Description for Item 1'),
    Item('Item 2', 'Description for Item 2'),
    Item('Item 3', 'Description for Item 3'),
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List View')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index].title),
            subtitle: Text(items[index].description),
          );
        },
      ),
    );
  }
}
