import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  bool isHelp =false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          setState((){
            isHelp = !isHelp;
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
            height: isHelp? 240: 50,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      padding: const EdgeInsets.only(top: 12),
                      child: Row(
                          children: [
                            const SizedBox(width: 20),
                            Icon(
                              Icons.local_hospital,
                              color:Colors.red,
                            ),
                            const SizedBox(width: 30),
                            Text(
                              'Trợ giúp',
                              style: GoogleFonts.roboto(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ]
                      )
                  ),
                  isHelp? ListTile(
                        title: Text(
                          'Tòa nhà Mac Plaza, số 10 Trần Phú, Hà Đông, Hà Nội',
                          style: GoogleFonts.roboto(
                            fontSize: 15,
                        ),
                      ),
                        leading: Icon(
                          Icons.location_on,
                          color: Colors.black,
                        ),
                      ) : const SizedBox(height: 0),
                  isHelp? Row(
                          children: [
                            const SizedBox(width: 20),
                            Icon(
                              Icons.email,
                              color: Colors.black,
                            ),
                            const SizedBox(width: 10),
                            TextButton(
                                onPressed: (){},
                                child: Text(
                                  'support@bujo.vn',
                                  style: GoogleFonts.roboto(
                                      color: Colors.blue,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600
                                  ),
                                ))
                          ]
                      ) : const SizedBox(height: 30),
                  isHelp? Row(
                          children: [
                            const SizedBox(width: 20),
                            Icon(
                              Icons.facebook,
                              size: 30,
                              color: Colors.blue,
                            ),
                            const SizedBox(width: 5),
                            TextButton(
                                onPressed: (){},
                                child: Text(
                                  'Fanpage',
                                  style: GoogleFonts.roboto(
                                      color: Colors.blue,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600
                                  ),
                                ))
                          ]
                      ) : const SizedBox(height: 30),
                  isHelp? Row(
                          children: [
                            SizedBox(width: 20),
                            Icon(
                              Icons.account_circle,
                              size: 30,
                              color: Colors.red,
                            ),
                            const SizedBox(width:5),
                            TextButton(
                                onPressed: (){},
                                child: Text(
                                  'Gruop',
                                  style: GoogleFonts.roboto(
                                      color: Colors.blue,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600
                                  ),
                                ))
                          ]
                      ) :const SizedBox(height: 20),
                ],
              ),
            )
        )
    );
  }
}