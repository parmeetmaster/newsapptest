import 'package:injectable/injectable.dart';
import 'package:url_launcher/url_launcher.dart';

@singleton
class UrlService {

  Future<void> openBrowser(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

}
