import 'package:flutter/material.dart';

class LightSwitch extends StatefulWidget {
  const LightSwitch({Key? key}) : super(key: key);

  @override
  _LightSwitchState createState() => _LightSwitchState();
}

class _LightSwitchState extends State<LightSwitch> {
  bool on = false;
  Color? selectedColor;
  @override
  void initState() {
    on = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Color> colors = [Colors.red, Colors.green, Colors.blue];
    List<String> colorTitle = ['Red', 'Green', 'Blue'];
    return Scaffold(
      backgroundColor: on ? selectedColor?.withOpacity(0.5) ?? Colors.white : Colors.black,
      appBar: AppBar(
        title: Text('Light'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.keyboard_arrow_left),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.light,
              size: 100,
              color: on ? selectedColor : Colors.grey,
            ),
            Expanded(child: SizedBox()),
            Text(
              on ? 'OFF' : 'ON',
              style: TextStyle(color: on ? Colors.black : Colors.white),
            ),
            IconButton(
              color: on ? Colors.amber[200] : Colors.red[200],
              highlightColor: on ? Colors.amber[200] : Colors.red[200],
              splashColor: on ? Colors.amber[200] : Colors.red[200],
              onPressed: () {
                setState(() {
                  on = !on;
                });
              },
              icon: Icon(Icons.light_mode),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(colors.length, (index) {
                Color color = colors[index];
                bool isSelected = selectedColor == color;
                return OutlinedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: isSelected ? color : null,
                  ),
                  onPressed: () {
                    setState(() {
                      selectedColor = selectedColor == color ? null : color;
                    });
                  },
                  child: Text(
                    colorTitle[index],
                    style: TextStyle(color: isSelected ? Colors.white : null),
                  ),
                );
              }),
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
