import 'package:flutter/material.dart';
import 'package:untitled3/global/app_path.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3/list_rank/rank.dart';
import 'package:untitled3/login/login_page.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0xFFE5E5E5),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        backgroundColor: Color(0xFFE5E5E5),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(15,15,15,0),
              decoration: BoxDecoration(
                  color :Color(0xFFE5E5E5)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Xin chào',
                          style: GoogleFonts.roboto(
                              fontSize: 18,
                              fontWeight: FontWeight.w700
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: onClickLogin,
                            child: Text('Đăng nhập',
                              style: GoogleFonts.lato(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30.0))
              ),
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Việc của bạn',
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.w600
                              ),
                              ),
                              SizedBox(height: 15),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text('0',
                                        style: GoogleFonts.lato(
                                          fontSize: 40,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text('Đã đăng',
                                        style: GoogleFonts.lato(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700
                                        ),
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    children: [
                                      Text('0',
                                        style: GoogleFonts.lato(
                                          fontSize: 40,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text('Đã làm',
                                        style: GoogleFonts.lato(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 20)
                                ],
                              )
                            ],
                          )
                      ),
                      SizedBox(width: 25),
                      Expanded(
                          flex: 1,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Cấp độ tài khoản',
                              style:GoogleFonts.lato(
                                fontWeight: FontWeight.w600
                              ) ,
                              ),
                              SizedBox(height: 15),
                              InkWell(
                                borderRadius: BorderRadius.circular(17),
                                child: Container(
                                  height: 75,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(17),
                                    color: Color(0xFF5043C6).withOpacity(0.3)
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 49,
                                          width: 49,
                                          child: Center(
                                            child: Icon(Icons.show_chart,color: Colors.white,),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                            child: Text(
                                              'Nâng cấp tài khoản',
                                              style: GoogleFonts.lato(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black.withOpacity(0.5),
                                              ),
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                      )
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  Text('Danh mục',
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                  ),
                  _chooseJob(),
                  Row(
                    children: [
                      Text('Xếp hạng',
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                      ),
                      Spacer(),
                      TextButton(
                          onPressed: onClickSeeAll,
                          child: Text('Xem tất cả',
                          style: GoogleFonts.lato(
                            fontSize: 14,
                            color: Colors.blue
                          ),)
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  _chooseJob(){
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 3,
              offset: Offset(0,0),
            )
          ]
        ),
        padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(0),
                  width: 50,
                  height: 50,
                  child: Container(
                      child: Image(
                        image: AssetImage(AppPath.Clean),
                      ),
                ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 50,
                  height: 50,
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage(AppPath.transfer),
                      ),
                      // Text('nhà',
                      // style: GoogleFonts.lato(
                      //   fontSize: 10
                      // ),
                      // )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(0),
                  width: 50,
                  height: 50,
                  child: Container(
                    child: Image(
                      image: AssetImage(AppPath.fixer),
                    ),
                  )
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(0),
                  width: 50,
                  height: 50,
                  child: Container(
                    child: Image(
                      image: AssetImage(AppPath.worker),
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(0),
                    width: 50,
                    height: 50,
                    child: Container(
                      child: Image(
                        image: AssetImage(AppPath.transport),
                      ),
                    )
                ),
                Container(
                    padding: EdgeInsets.all(0),
                    width: 50,
                    height: 50,
                    child: Container(
                      child: Image(
                        image: AssetImage(AppPath.garden),
                      ),
                    ),
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(0),
                  width: 50,
                  height: 50,
                  child: Container(
                    child: Image(
                      image: AssetImage(AppPath.Office),
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(0),
                    width: 50,
                    height: 50,
                    child: Container(
                      child: Image(
                        image: AssetImage(AppPath.events),
                      ),
                    )
                ),
                Container(
                  padding: EdgeInsets.all(0),
                  width: 50,
                  height: 50,
                  child: Container(
                    child: Image(
                      image: AssetImage(AppPath.Different),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
  void onClickLogin(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage())
    );
  }
  void onClickSeeAll(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Rated())
    );
  }
}


