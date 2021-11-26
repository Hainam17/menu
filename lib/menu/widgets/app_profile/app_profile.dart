import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppProfile extends StatefulWidget {
  const AppProfile({Key? key}) : super(key: key);

  @override
  _AppProfileState createState() => _AppProfileState();
}

class _AppProfileState extends State<AppProfile> {
  bool isAppProfile =false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          setState((){
            isAppProfile = !isAppProfile;
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
            height: isAppProfile? 230: 50,
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
                                  Icons.error,
                                  color:Colors.black,
                            ),
                            const SizedBox(width: 30),
                            Text(
                                'Thông tin ứng dụng',
                                style: GoogleFonts.roboto(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                          ]
                      )
                  ),
                  isAppProfile? Row(
                          children: [
                            SizedBox(width: 15),
                            TextButton(
                                onPressed: (){},
                                child: Text(
                                  'Thông tin ứng dụng',
                                  style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600
                                  ),
                                ))
                          ]
                      ) :const SizedBox(height: 10),
                  isAppProfile?  Row(
                          children: [
                            SizedBox(width: 15),
                            TextButton(
                                onPressed: (){},
                                child: Text(
                                  'Về chúng tôi',
                                  style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600
                                  ),
                                )
                            )
                          ]
                      ) :const SizedBox(height: 10),
                  isAppProfile? Row(
                          children: [
                            SizedBox(width: 15),
                            TextButton(
                                onPressed: (){},
                                child: Text(
                                  'Chính sách và điều khoản',
                                  style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600
                                  ),
                                )
                            )
                          ]
                      ):const SizedBox(height: 10),
                  isAppProfile? Row(
                          children: [
                            SizedBox(width: 15),
                            TextButton(
                                onPressed: (){},
                                child: Text(
                                  'Quyền riêng tư',
                                  style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600
                                  ),
                                )
                            )
                          ]
                      ):const SizedBox(height:0),
                ],
              ),
            )
        )
    );
  }
}