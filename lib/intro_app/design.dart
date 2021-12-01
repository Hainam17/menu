import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3/global/app_path.dart';
import 'package:flutter_svg/svg.dart';
class Design extends StatelessWidget {
  const Design({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
                AppPath.thiet_ke,
                height: 320,
            ),
            const SizedBox(height: 50),
            Text(
              'THIẾT KẾ TRỰC QUAN',
              style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.w700
              ),
            ),
            const SizedBox(height: 20),
            Text(
                'Giao diện đơn giản dễ nhìn, bố cục sắp xếp hợp lý, hướng dẫn cũng như gợi ý'
                    'cách sử dụng App một cách chi tiết.'
            )
          ],
        ),
      ),
    );
  }
}
