import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const platform = const MethodChannel('com.fz.imagecropper/image');
  String name = 'Getting Name...';

  @override
  void initState() {
    printName();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(name),
      ),
    );
  }

  void printName() async {
    String value = '';

    var sendMap = <String, dynamic>{
      "name": "Parth Aggarwal",
    };

    try {
      value = await platform.invokeMethod("GetName", sendMap);
    } on PlatformException catch (e) {
      print(e.message);
    }
    setState(() {
      name = value;
    });
  }
}
