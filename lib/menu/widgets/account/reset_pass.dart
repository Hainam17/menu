import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReSet extends StatelessWidget {
  const ReSet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          'Mật khẩu đã được thay đổi',
          style: GoogleFonts.roboto(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white
          ),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(15,0,15,0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(15,15,15,0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Mật khẩu',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15,15,15,10),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Nhập lại mật khẩu',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed:(){},
                          child: Text('Xác nhận',
                            style: GoogleFonts.lato(),
                          ),
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      side: BorderSide(color: Colors.blueAccent)
                                  )
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
      ),
    );
  }
}
