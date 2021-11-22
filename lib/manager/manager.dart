import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Manager extends StatefulWidget {
  const Manager({Key? key}) : super(key: key);

  @override
  _ManagerState createState() => _ManagerState();
}

class _ManagerState extends State<Manager> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF6F6F6),
        centerTitle: true,
        titleSpacing: 0,
        automaticallyImplyLeading: false,
        title: Text('Quản Lý',
        style: GoogleFonts.lato(
          fontSize: 25,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        ),
    )
    );
  }
}
