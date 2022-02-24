import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3/global/app_path.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 150,
            width: 150,
          child:ClipOval(
            child: Image(
              image: AssetImage(AppPath.user_image),
              fit: BoxFit.cover,
            ),
          ),
          ),
          const SizedBox(height: 20),
          Text(
                'Hải Nam',
              style: GoogleFonts.roboto(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Colors.black
              ),
          ),
          SizedBox(height: 20),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                            'Miễn phí',
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          color: Colors.blue
                        ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        child: Text(
                          'Cấp bậc',
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.w300
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          '0',
                          style: GoogleFonts.roboto(
                              fontSize: 18,
                              fontWeight: FontWeight.w900
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        child: Text(
                          'Đã giao',
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w300
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          '0',
                          style: GoogleFonts.roboto(
                              fontSize: 18,
                              fontWeight: FontWeight.w900
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        child: Text(
                          'Đã nhận',
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w300
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
