import 'package:flutter/material.dart';
import 'package:sketch_art/screen/splashscreen.dart';

void main() {
  runApp(const Homescreen());
}

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: Splashscreen());
  }
}
