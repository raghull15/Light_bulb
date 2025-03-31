import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "LIGHT_BULB",
    home: BulbApp(),
  ));
}

class BulbApp extends StatefulWidget {
  @override
  _BulbAppState createState() => _BulbAppState();
}

class _BulbAppState extends State<BulbApp> {
  bool isOn = false;

  void toggleBulb() {
    setState(() {
      isOn = !isOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 22, 142, 228),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              isOn ? Icons.lightbulb : Icons.lightbulb_outline,
              color: isOn
                  ? Color.fromARGB(255, 49, 250, 9) 
                  : Colors.black, 
              size: 300,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: toggleBulb,
              child: Text(isOn ? 'Turn Off' : 'Turn On'),
            ),
          ],
        ),
      ),
    );
  }
}
