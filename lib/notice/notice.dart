import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3/login/login_page.dart';
class Notice extends StatefulWidget {
  const Notice({Key? key}) : super(key: key);

  @override
  _NoticeState createState() => _NoticeState();
}

class _NoticeState extends State<Notice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffF6F6F6),
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        title: Text('Thông báo',
        style: GoogleFonts.lato(
          fontSize: 25,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Bạn chưa đăng nhâp.',
            style: GoogleFonts.lato(
              fontSize: 18
            ),
            ),
            ElevatedButton(
                onPressed: onLogInClick,
                child: Text('Đăng nhập')
            )
          ],
        )
      ),
    );
  }
  void onLogInClick(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage())
    );
  }
}
