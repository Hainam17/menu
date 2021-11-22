import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class General extends StatelessWidget {
  const General({Key? key}) : super(key: key);

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
              Icons.settings,
              color: Colors.green,
            )
          ),
          SizedBox(width: 30),
          Container(
            child: Text(
              'Chung',
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

