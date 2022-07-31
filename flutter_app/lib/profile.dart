import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("Home"),
        actions: const [
          Icon(Icons.search),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 3, color: Colors.white),
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(
                    'https://i.pinimg.com/originals/ae/ec/c2/aeecc22a67dac7987a80ac0724658493.jpg',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
