import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3/global/app_path.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text(
            'Thông tin ứng dựng',
            style: GoogleFonts.roboto(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.white
            ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 20, right: 20),
        children: [
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey
                ),
                child: Image(
                  image: AssetImage(AppPath.logo_app),
                  width: 100,
                  height: 100,
                ),
              ),const SizedBox(height: 5),
              Text('2021 vuongsoft.vn',
              style: GoogleFonts.roboto(
                fontSize: 10,
              ),),
              const SizedBox(height: 15),
              Text('Phiên bản 1.1.0',
              style: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),),
              const SizedBox(height: 15),
              Text('Build Date: 10/11/2021',
                style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),),
              const SizedBox(height: 20),
              Text(
                'BUJO là ứng dụng trực tuyến dành cho smatphone. Kết nối những người có'
                    ' công việc phát sinh ngắn hạn với những người đang tìm việc. Cho phép'
                    ' người dùng đăng công việc và người dùng khác tìm việc trên hệ thống.',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 16
                )
              ),
              const SizedBox(height: 20),
              Text('Ưu đãi thành viên hạng cao:',
              style: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),),const SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                color: Colors.grey.withOpacity(0.3),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.fromLTRB(35,5, 20, 0),
                        child: Text(
                          '*Tích điểm thưởng',
                          style: GoogleFonts.roboto(
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35,5, 20, 0),
                        child: Text(
                          '*Nhận việc không giới hạn',
                          style: GoogleFonts.roboto(
                              fontSize: 15,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35,5, 20, 0),
                        child: Text(
                          '*Xem chi tiết danh sách thương lượng',
                          style: GoogleFonts.roboto(
                              fontSize: 15,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35,5, 20, 0),
                        child: Text(
                          '*Không hiện quảng cáo',
                          style: GoogleFonts.roboto(
                              fontSize: 15,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),const SizedBox(height: 20),
              ElevatedButton(
                  onPressed:(){},
                  child: Text(
                      'Phản hồi'
                  )
              )
            ],
          )
        ],
      ),
    );
  }
}
