import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3/global/app_path.dart';
import 'package:flutter_svg/svg.dart';
class Location extends StatelessWidget {
  const Location({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppPath.location,
              height: 320,
            ),
            const SizedBox(height: 50),
            Text(
              'HIỆN CÔNG VIỆC QUANH BẠN',
              style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.w700
              ),
            ),
            const SizedBox(height: 20),
            Text(
                'Bản đồ trực quan dễ nhìn giúp bạn tìm việc quanh nơi bạn sống một '
                    'cách dễ dàng và nhanh chóng.'
            )
          ],
        ),
      ),
    );
  }
}
