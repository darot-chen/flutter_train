import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ShoppingItem extends StatelessWidget {
  const ShoppingItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Shopping Item'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
        ),
        children: List.generate(20, (index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
              boxShadow: [BoxShadow()],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: GridTile(
                child: Image.network(
                  'https://m.media-amazon.com/images/I/71niXI3lxlL._AC_SY679_.jpg',
                  fit: BoxFit.cover,
                ),
                footer: Container(
                  padding: EdgeInsets.all(8),
                  color: Colors.white,
                  child: Text("Marvel: The Avengers Endgame Movie Poster"),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  Card buildCardExample(int index, BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 1,
      child: Container(
        padding: EdgeInsets.all(8),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "This is title $index",
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(height: 8),
            Text(
              'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.',
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
