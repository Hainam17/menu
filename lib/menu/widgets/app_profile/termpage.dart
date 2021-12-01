import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TermPage extends StatelessWidget {
  const TermPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text(
          'Chính sách điều khoản',
          style: GoogleFonts.roboto(
            fontSize: 25,
            fontWeight: FontWeight.w800,
            color: Colors.white
          ),
        ),
      ),
      body: WebView(
        initialUrl: "https://bujo.vn/#/Term",
          javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
