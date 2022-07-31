import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ShoppingListScreen extends StatelessWidget {
  const ShoppingListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> items = [
      'Egg',
      'Flour',
      'Chocolate Chips',
      'Egg',
      'Flour',
      'Chocolate Chips',
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping List"),
      ),
      // body: ListView.builder(
      //   itemCount: 20,
      //   itemBuilder: (context, index) {
      //     return ListTile(
      //       leading: CircleAvatar(
      //         child: Text(index.toString()),
      //       ),
      //       title: Text(items[index % 3]),
      //     );
      //   },
      // ),
      body: ListView(
        children: List.generate(items.length, (index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(blurRadius: 2),
              ],
            ),
            child: ListTile(
              tileColor: Colors.white,
              leading: CircleAvatar(
                child: Text(index.toString()),
              ),
              title: Text(items[index % 3]),
            ),
          );
        }),
      ),
    );
  }
}
