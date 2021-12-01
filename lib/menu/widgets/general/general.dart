
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3/intro_app/design.dart';
import 'package:untitled3/intro_app/location.dart';

class General extends StatefulWidget {
  const General({Key? key}) : super(key: key);

  @override
  _GeneralState createState() => _GeneralState();
}

class _GeneralState extends State<General> {
  bool isGeneral =false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          setState((){
            isGeneral = !isGeneral;
          });
        },
        child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow:[ BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(1,1.15),
                )
                ]
            ),
            height: isGeneral? 90: 50,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 12),
                      child: Row(
                          children: [
                            const SizedBox(width: 20),
                            Icon(
                                  Icons.settings,
                                  color:Colors.green,
                            ),
                            const SizedBox(width: 30),
                            Text(
                                'Chung',
                                style: GoogleFonts.roboto(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                          ]
                      )
                  ),
                  isGeneral? Row(
                          children: [
                            SizedBox(width: 15),
                            TextButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Location()));
                                },
                                child: Text(
                                  'Màn hình giới thiệu',
                                  style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600
                                  ),
                                ))
                          ]
                  ):const SizedBox(height: 10),
                ],
              ),
            )
        )
    );
  }
}