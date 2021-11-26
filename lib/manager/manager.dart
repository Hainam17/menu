import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3/manager/widgets/hire.dart';
import 'package:untitled3/manager/widgets/received.dart';

class Manager extends StatefulWidget {
  const Manager({Key? key}) : super(key: key);

  @override
  _ManagerState createState() => _ManagerState();
}

class _ManagerState extends State<Manager> {
  @override
  Widget build(BuildContext context) =>DefaultTabController(length: 2, child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text('Quản Lý',
        style: GoogleFonts.roboto(
          fontSize: 30,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
        ),
        bottom: TabBar(
          tabs: [
            Tab(child: Text(
                'Tìm người làm',
            style: GoogleFonts.roboto(
              fontSize: 22,
              fontWeight: FontWeight.w800,
              color: Colors.white
                ),
              ),
            ),
            Tab(
              child: Text(
                'Việc đã nhận',
                style: GoogleFonts.roboto(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: Colors.white
                ),
              ),
            ),
          ],
        ),
        ),body: TabBarView(
            children: [
              Hire(),
              ReCeived(),
            ],
      ),
    )
  );
  }
