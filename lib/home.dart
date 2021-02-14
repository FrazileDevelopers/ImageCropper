import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const platform = const MethodChannel('com.fz.imagecropper/image');

  @override
  void initState() {
    PrintName();
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
        child: Text('NAME'),
      ),
    );
  }

  void PrintName() async {
    String value = '';
    try {
      value = await platform.invokeMethod("GetName");
    } catch (e) {
      print(e);
    }
    print(value);
  }
}
