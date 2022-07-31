import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/profile.dart';
import 'package:flutter_app/shopping_item.dart';
import 'package:flutter_app/shopping_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                print('Hello');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ShoppingListScreen(),
                  ),
                );
              },
              child: Text("Shopping list"),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(),
                  ),
                );
              },
              icon: Icon(Icons.face),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ShoppingItem(),
                  ),
                );
              },
              child: Text("Shopping Item"),
            )
          ],
        ),
      ),
    );
  }
}
