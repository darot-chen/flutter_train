import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LightSwitchCorrecttionScreen extends StatefulWidget {
  const LightSwitchCorrecttionScreen({Key? key}) : super(key: key);

  @override
  State<LightSwitchCorrecttionScreen> createState() => _LightSwitchCorrecttionScreenState();
}

class _LightSwitchCorrecttionScreenState extends State<LightSwitchCorrecttionScreen> {
  bool light = false;
  Color? selectedColor; //can be null

  @override
  Widget build(BuildContext context) {
    List<String> buttonTitles = ['Green', 'Red', "Blue"];
    List<Color> buttonColors = [Colors.green, Colors.red, Colors.blue];
    return Scaffold(
      backgroundColor: light ? selectedColor?.withOpacity(0.5) : Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(light ? 'Light is ON' : "Light is Off"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.light,
              color: !light ? Colors.white : selectedColor ?? Colors.black,
              size: 100,
            ),
            Expanded(child: SizedBox()),
            Text(
              light ? 'OFF' : 'ON',
              style: TextStyle(
                fontSize: 24,
                color: light ? Colors.black : Colors.white,
              ),
            ),
            SizedBox(height: 16),
            IconButton(
              iconSize: 48,
              onPressed: () {
                setState(() {
                  light = !light;
                });
              },
              icon: Icon(
                Icons.light_mode,
                color: light ? Colors.black : Colors.white,
              ),
            ),
            SizedBox(height: 24),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(3, (index) {
                  bool isSelect = selectedColor == buttonColors[index];
                  return OutlinedButton(
                    style: TextButton.styleFrom(
                      backgroundColor: isSelect ? buttonColors[index] : Colors.white,
                      padding: EdgeInsets.all(8),
                    ),
                    onPressed: () {
                      setState(() {
                        selectedColor = buttonColors[index];
                      });
                    },
                    child: Text(
                      buttonTitles[index],
                      style: TextStyle(
                        fontSize: 24,
                        color: isSelect ? Colors.white : Colors.black,
                      ),
                    ),
                  );
                })),
            SizedBox(height: 48),
          ],
        ),
      ),
    );
  }
}
