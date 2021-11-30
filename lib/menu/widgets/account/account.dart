import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3/menu/widgets/account/edit_personal.dart';
import 'package:untitled3/menu/widgets/account/personal.dart';
import 'package:untitled3/menu/widgets/account/reset_pass.dart';

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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                  isAccount?
                  Padding(padding: const EdgeInsets.only(top:0),
                  child: Row(
                          children: [
                            SizedBox(width: 15),
                            TextButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Personal()));
                                },
                                child: Text(
                                  'Xem trang cá nhân',
                                  style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600
                                  ),
                                ))
                          ]
                      ))
                  :const SizedBox(),
                  isAccount?
                  Padding(padding: const EdgeInsets.only(top:0),
                  child: Row(
                          children: [
                            SizedBox(width: 15),
                            TextButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>EditPersonal()));
                                },
                                child: Text(
                                  'Chỉnh sửa thông tin cá nhân',
                                  style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600
                                  ),
                                ))
                          ]
                  )):const SizedBox(),
                  isAccount?
                  Padding(padding: const EdgeInsets.only(),
                  child:Row(
                          children: [
                            SizedBox(width: 15),
                            TextButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ReSet()));
                                },
                                child: Text(
                                  'Đổi mật khẩu',
                                  style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600
                                  ),
                                ))
                          ]
                  )):const SizedBox(),
                ],
              ),
            )
        )
    );
  }
}