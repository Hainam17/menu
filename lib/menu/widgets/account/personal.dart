import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Personal extends StatelessWidget {
  const Personal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
      ),
      body:ListView(
        padding: const EdgeInsets.only(left: 25,right: 25),
        children: [
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(
              child: Align(
                child: Text(
                  'Hai Nam',
                  style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              )
              ),const SizedBox(height: 20),
              Container(
                  margin: EdgeInsets.fromLTRB(5, 11, 5, 14),
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 19),
                  decoration: BoxDecoration(
                    color: Color(0xFF5043C6).withOpacity(0.05),
                    borderRadius: BorderRadius.circular(10),
                    ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            children: [
                              Text('Tổng cộng',
                                style: GoogleFonts.roboto(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.deepPurple
                              ),
                            ),
                            Text('0',
                              style: TextStyle(
                              fontSize: 25
                          ),
                        )
                      ],
                    ),
                      Column(
                          children: [
                          Text('Đã làm',
                            style: GoogleFonts.roboto(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.deepPurple,
                            )
                           ),
                          Text('0',
                            style: TextStyle(
                              fontSize: 25,
                        ),),
                      ],
                    ),
                        Column(
                          children: [
                            Text('Đánh giá',
                              style: GoogleFonts.roboto(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.deepPurple,
                              )
                            ),
                            Text('0',
                                style: TextStyle(
                                fontSize: 25,
                             ),),
                         ],
                    ),
                  ],
                )
              ),
              Container(
                child: Row(
                  children: [
                    Icon(Icons.show_chart,
                    color: Colors.blue,),
                    Text('Đã xác thực số điện thoại',
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue
                    ),)
                  ],
                ),
              ),const SizedBox(height: 10),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                        Text('Tên đăng nhập',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                        ),
                    TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Personal()));
                        },
                        child: Text(
                          'Chỉnh sửa thông tin cá nhân',
                          style: GoogleFonts.roboto(
                              color: Colors.blue,
                              fontSize: 15,
                              fontWeight: FontWeight.w600
                          ),
                        ))
                  ],
                ),
              ),
              Text('hainam99'),
              const SizedBox(height: 15),
              Text('Số điện thoại',
              style: GoogleFonts.roboto(
                fontSize: 18,
                fontWeight: FontWeight.w600
              ),),
              const SizedBox(height: 5),
              Text('0392198167'),
              const SizedBox(height: 15),
              Text('Là thành viên từ',
                style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                ),),
              const SizedBox(height: 5),
              Text('11-10-2021'),
              const SizedBox(height: 15),
              Text('Địa chỉ',
                style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                ),),
              const SizedBox(height: 5),
              Text('Chưa cập nhật')
            ],
          )
       ]
      )
    );
  }
}
