import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3/global/app_path.dart';

class Design extends StatelessWidget {
  const Design({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
                image: AssetImage(AppPath.thiet_ke)
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
              'Đăng tin tìm việc theo hạng mục công việc, chỉ qua vài thao tác đơn giản '
               'như mô tả công việc, thời gian, địa điểm làm việc,...'
            )
          ],
        ),
      ),
    );
  }
}
