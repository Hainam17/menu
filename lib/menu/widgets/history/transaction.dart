import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TranSaction extends StatelessWidget {
  const TranSaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text(
            'Lịch sử giao dịch',
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontSize: 20
            ),
          ),
      ),
      body: Center(
        child: Text(
          'Bạn chưa có giao dịch nào',
          style: GoogleFonts.roboto(
            fontSize: 15,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
    );
  }
}
