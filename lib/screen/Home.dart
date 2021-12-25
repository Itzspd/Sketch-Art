import 'package:flutter/material.dart';
import 'package:sketch_art/helper/appanme.dart';
import 'package:sketch_art/PicFile.dart';
import 'package:sketch_art/screen/Picturedetail.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: appname(),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
          child: ListView.builder(
            itemCount: Gallery.images.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetialPageview(gallery: Gallery.images[index]);
                  }));
                },
                child: buildPictureindex(Gallery.images[index]),
              );
            },
          ),
        ),
      ),
    );
  }
}

Widget buildPictureindex(Gallery gallery) {
  return Card(
      elevation: 20,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10),
              child: Image(image: AssetImage(gallery.Image)),
            )
          ],
        ),
      ));
}
