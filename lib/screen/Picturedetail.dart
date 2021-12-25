import 'package:flutter/material.dart';
import 'package:sketch_art/PicFile.dart';
import 'package:sketch_art/helper/url_launcher.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetialPageview extends StatefulWidget {
  final Gallery gallery;
  const DetialPageview({Key? key, required this.gallery}) : super(key: key);

  @override
  _DetialPageviewState createState() => _DetialPageviewState();
}

class _DetialPageviewState extends State<DetialPageview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_sharp,
              size: 25,
              color: Colors.blue,
            )),
      ),
      body: ListView(children: [
        Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.gallery.Image),
                fit: BoxFit.fitHeight,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.blueAccent, Colors.purple]),
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  child: const Text(
                    'Call me',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w300),
                  ),
                  onPressed: () async {
                    const phonenumber = '+2348032011312';
                    const url = 'tel:$phonenumber';

                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  },
                ),
                const Icon(
                  Icons.phone_enabled_sharp,
                  color: Colors.white,
                )
              ],
            )),
        const SizedBox(
          height: 10,
        ),
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.blueAccent, Colors.purple]),
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  child: const Text(
                    'Chat me up',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w300),
                  ),
                  onPressed: () async {
                    const phonenumber = '+2348032011312';
                    const url = 'https://wa.me/$phonenumber';
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  },
                ),
                const Icon(
                  FontAwesomeIcons.whatsapp,
                  color: Colors.white,
                )
              ],
            )),
        const SizedBox(
          height: 10,
        ),
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.blueAccent, Colors.purple]),
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  child: const Text(
                    'Visit my Instagram handle',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w300),
                  ),
                  onPressed: () {
                    const url =
                        'https://www.instagram.com/sylvesterpaul.itzspd';

                    openBrowser(url: url, inapp: true);
                  },
                ),
                const Icon(
                  FontAwesomeIcons.instagram,
                  color: Colors.white,
                )
              ],
            )),
      ]),
    );
  }
}
