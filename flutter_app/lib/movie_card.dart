import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MovieCard extends StatelessWidget {
  final String image;
  final String description;
  const MovieCard({
    Key? key,
    required this.image,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: GridTile(
        child: Image.network(
          image,
          fit: BoxFit.cover,
        ),
        footer: Container(
          padding: EdgeInsets.all(8),
          color: Colors.white,
          child: Text(
            description,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
