import 'package:flutter/material.dart';

import 'home.dart';

class ConfigApp extends StatefulWidget {
  @override
  _ConfigAppState createState() => _ConfigAppState();
}

class _ConfigAppState extends State<ConfigApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Cropper',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
