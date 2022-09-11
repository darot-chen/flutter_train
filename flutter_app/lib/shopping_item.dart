import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/movie_card.dart';

class ShoppingItem extends StatefulWidget {
  final int numberOfItems;
  final List<String> images;

  const ShoppingItem({
    Key? key,
    required this.numberOfItems,
    required this.images,
  }) : super(key: key);

  @override
  State<ShoppingItem> createState() => _ShoppingItemState();
}

class _ShoppingItemState extends State<ShoppingItem> {
  List<String> listImages = [];

  @override
  void initState() {
    listImages.addAll(widget.images);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            listImages.add('https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png');
          });
        },
      ),
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
        children: List.generate(listImages.length, (index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
              boxShadow: [BoxShadow()],
            ),
            child: InkWell(
              onTap: () {
                print('Taping ...');
              },
              onLongPress: () {
                print('Removing...');
                setState(() {
                  listImages.removeAt(index);
                });
              },
              child: MovieCard(
                image: listImages[index],
                description:
                    'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.',
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
