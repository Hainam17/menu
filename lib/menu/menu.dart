import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3/menu/widgets/account.dart';
import 'package:untitled3/menu/widgets/app_profile.dart';
import 'package:untitled3/menu/widgets/general.dart';
import 'package:untitled3/menu/widgets/help.dart';
import 'package:untitled3/menu/widgets/history.dart';
import 'package:untitled3/menu/widgets/user_profile.dart';
class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEAEAEA),
      body: ListView(
        padding: EdgeInsets.only(left: 15,right: 15),
        children: [
          SizedBox(height: 20),
          Container(
              child:Column(
                children: [
                  Container(
                    child: Text(
                      'Cài đặt',
                      style: GoogleFonts.roboto(
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                          color: Colors.black
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  UserProfile(),
                  const SizedBox(height: 20),
                  Account(),
                  const SizedBox(height: 10),
                  History(),
                  const SizedBox(height: 10),
                  General(),
                  const SizedBox(height: 10),
                  AppProfile(),
                  const SizedBox(height: 10),
                  Help(),
                  Padding(
                    padding: const EdgeInsets.only(top: 25,bottom: 10),
                    child: SizedBox(
                      width: double.infinity,
                      height: 40,
                        child: ElevatedButton(
                          onPressed: () => showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: Align(
                                child: Text('ĐĂNG XUẤT',
                                style: GoogleFonts.roboto(
                                  fontSize: 25,
                                  color: Colors.red
                                )),
                              ),
                              content: Text('Bạn có chắc chắn muốn đăng xuất',
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.w600
                              ),),
                              actions:[
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(context),
                                        child: Text('Trở lại',
                                        style: GoogleFonts.roboto(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.red
                                        ),),
                                      ),
                                      TextButton(
                                        onPressed: () => Navigator.pop(context),
                                        child:Text('Đăng xuất',
                                        style: GoogleFonts.roboto(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.blue
                                        ),),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    )
                                ),
                                backgroundColor: MaterialStateProperty.all(Colors.deepOrange)
                            ),
                          child: Text('Đăng xuất',
                          style:GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          )
                            ),
                        ),
                    ),
                  ),
                ],
              )
          )
        ],
      ),
    );
  }
}