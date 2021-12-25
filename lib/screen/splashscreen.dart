import 'package:flutter/material.dart';
import 'package:sketch_art/screen/Home.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    _navigatetonextscreen();
    super.initState();
  }

  _navigatetonextscreen() async {
    await Future.delayed(const Duration(seconds: 5));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Sketch',
            style: TextStyle(fontSize: 60),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.blueAccent, Colors.purple]),
            ),
            child: const Text(
              'ART',
              style: TextStyle(fontSize: 75, fontWeight: FontWeight.w300),
            ),
          )
        ],
      )),
    );
  }
}
