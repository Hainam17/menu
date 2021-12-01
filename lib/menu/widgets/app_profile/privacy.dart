import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text(
          'Về chúng tôi',
          style: GoogleFonts.roboto(
            fontSize: 25,
            fontWeight: FontWeight.w800,
            color: Colors.white
          ),
        ),
      ),
      body: WebView(
        initialUrl: "https://bujo.vn/#/Privacy",
          javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
