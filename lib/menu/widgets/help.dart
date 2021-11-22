import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3/global/app_path.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow:[ BoxShadow(
              color: Colors.grey
          )
          ]
      ),
      height: 50,
      child: Row(
        children: [
          SizedBox(width: 20),
          Container(
            child: Icon(
              Icons.add_circle_outline_sharp
            ),
          ),
          SizedBox(width: 30),
          Container(
            child: Text(
              'Trợ giúp',
              style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.w600
              ),
            ),
          )
        ],
      ),
    );
  }
}

