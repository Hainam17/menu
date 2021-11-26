import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  bool isAccount =false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          setState((){
            isAccount = !isAccount;
          });
        },
        child: AnimatedContainer(
            height: isAccount? 180: 50,
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
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                          children: [
                            const SizedBox(width: 20),
                            Icon(
                                  Icons.account_circle,
                                  color:Colors.red,
                            ),
                            const SizedBox(width: 30),
                            Text(
                                'Tài khoản',
                                style: GoogleFonts.roboto(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                          ]
                      )
                  ),
                  isAccount? Row(
                          children: [
                            SizedBox(width: 15),
                            TextButton(
                                onPressed: (){},
                                child: Text(
                                  'Xem trang cá nhân',
                                  style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600
                                  ),
                                ))
                          ]
                      )
                  :const SizedBox(height: 10),
                  isAccount? Row(
                          children: [
                            SizedBox(width: 15),
                            TextButton(
                                onPressed: (){},
                                child: Text(
                                  'Chỉnh sửa thông tin cá nhân',
                                  style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600
                                  ),
                                ))
                          ]
                  ):const SizedBox(height: 10),
                  isAccount? Row(
                          children: [
                            SizedBox(width: 15),
                            TextButton(
                                onPressed: (){},
                                child: Text(
                                  'Đổi mật khẩu',
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