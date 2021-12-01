import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3/global/app_path.dart';
import 'package:flutter_svg/svg.dart';
class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppPath.dang_tin,
              height: 320,
            ),
            const SizedBox(height: 50),
            Text(
              'ĐĂNG TIN NHẬN VIỆC DỄ DÀNG',
              style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.w700
              ),
            ),
            const SizedBox(height: 20),
            Text(
                'Đăng tin tìm người làm cũng như tìm việc dễ dàng, chỉ qua vài thao tác đơn giản'
                    'như mô tả công việc, thời gian, địa điểm làm việc,....'
            )
          ],
        ),
      ),
    );
  }
}
