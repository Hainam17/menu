import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ReSet extends StatefulWidget {
  const ReSet({Key? key}) : super(key: key);

  @override
  _ResetState createState() => _ResetState();
}

class _ResetState extends State<ReSet> {
  @override
  Widget build(BuildContext context) {
    var MyBoder =OutlineInputBorder(
        borderRadius: new BorderRadius.only(
          bottomLeft: const Radius.circular(15),
          bottomRight: const Radius.circular(15),
          topLeft: const Radius.circular(15),
          topRight: const Radius.circular(15),
        )
    );
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Trở lại',
          )
      ),
      body: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Đặt lại mật khẩu',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: Wrap(
                children: [
                  Text('Hãy nhập số điện thoại bạn đăng kí, chúng tôi sẽ gửi mã xác nhận (OTP) đến số điện thoại của bạn để xác nhận',
                  style: GoogleFonts.lato(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: MyBoder,
                          labelText: 'Số điện thoại',
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                        ],
                      )
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: MyBoder,
                          labelText: 'Mật khẩu mới',
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                      child: TextField(
                        decoration: InputDecoration(
                          border: MyBoder,
                          labelText: 'Nhập lại mật khẩu',
                        ),
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: onConfirm,
                        child:
                        Text("Xác nhận",
                          style: GoogleFonts.lato(),
                        ),
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                                side:BorderSide(color: Colors.blueAccent)
                      ),
                    ),
                  ),
                    )
                    )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  void onConfirm(){

  }
}
