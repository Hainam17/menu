import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3/global/app_path.dart';
import 'package:flutter_svg/svg.dart';
class Security extends StatelessWidget {
  const Security({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppPath.bao_mat,
              height: 320,
            ),
            const SizedBox(height: 50),
            Text(
              'XÁC THỰC BẢO MẬT',
              style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.w700
              ),
            ),
            const SizedBox(height: 20),
            Text(
                'Cam kết bảo mật thông tin khách hàng khi đăng kí thành viên và thực hiện '
                    'các giao dịch trên nền tảng.'
            )
          ],
        ),
      ),
    );
  }
}
