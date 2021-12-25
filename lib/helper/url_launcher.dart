import 'package:url_launcher/url_launcher.dart';

Future openBrowser({
  required String url,
  bool inapp = false,
}) async {
  if (await canLaunch(url)) {
    await launch(url,
        forceSafariVC: inapp, forceWebView: inapp, enableJavaScript: inapp);
  }
}

Future phoneNumber({
  required String phoneNumber,
  required String url,
}) async {
  if (await canLaunch(url)) {
    await launch(url);
  }
}
