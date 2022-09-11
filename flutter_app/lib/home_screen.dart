import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/counter_screen.dart';
import 'package:flutter_app/facebook_login.dart';
import 'package:flutter_app/light_switch.dart';
import 'package:flutter_app/light_switch_correction_screen.dart';
import 'package:flutter_app/profile.dart';
import 'package:flutter_app/shopping_item.dart';
import 'package:flutter_app/shopping_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'https://images.thedirect.com/media/article_full/mcu-movies.jpg',
      'https://terrigen-cdn-dev.marvel.com/content/prod/1x/thorloveandthunder_lob_crd_04.jpg',
      'https://i.guim.co.uk/img/media/8b039aa4d70b2a201b1f3266a5f583d1a53fd926/0_147_4579_2747/master/4579.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=b9c3356f7f8dc6b179646038797782f2',
    ];
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
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FacebookLoginScreen(),
                  ),
                );
              },
              icon: Icon(Icons.facebook_outlined),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return ShoppingItem(
                        numberOfItems: 8,
                        images: images,
                      );
                    },
                  ),
                );
              },
              child: Text("Shopping Item"),
            ),
            IconButton(
              icon: Text("Counter"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return CounterScreen();
                    },
                  ),
                );
              },
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => LightSwitch()));
              },
              child: Text('Light'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => LightSwitchCorrecttionScreen()));
              },
              child: Text('Light home work correction'),
            )
          ],
        ),
      ),
    );
  }
}
