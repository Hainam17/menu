import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3/global/app_path.dart';
import 'package:untitled3/home_page/home_page.dart';
import 'package:untitled3/manager/manager.dart';
import 'package:untitled3/menu/menu.dart';
import 'package:untitled3/notice/notice.dart';
import 'package:untitled3/search_job/search_job.dart';

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int currentTab=0;
  final List<Widget> screen=[
    HomePage(),
    Manager(),
    Job(),
    Notice(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currenScreen= HomePage();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
            body: PageStorage(
        bucket: bucket,
        child: currenScreen,
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Container(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 30,
                      onPressed:(){
                        setState(() {
                          currenScreen=HomePage();
                          currentTab=0;
                        }
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage(AppPath.home_screen),
                              color: currentTab==0 ? Colors.blue :Colors.grey
                          ),
                          Text('Đăng việc',
                            style: GoogleFonts.lato(
                                fontSize: 12,
                                color: currentTab ==0? Colors.black :Colors.grey
                            ),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 30,
                      onPressed: (){
                        setState(() {
                          currenScreen=Manager();
                          currentTab=1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage(AppPath.task_screen),
                              color: currentTab==1 ? Colors.blueAccent :Colors.grey
                          ),
                          SizedBox(height: 8),
                          Text('Quản lý',
                            style: GoogleFonts.lato(
                                fontSize: 12,
                                color: currentTab ==1? Colors.black :Colors.grey
                            ),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 30,
                      onPressed: (){
                        setState(() {
                          currenScreen=Job();
                          currentTab=2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage(AppPath.job_screen),
                            color: currentTab==2 ? Colors.blueAccent :Colors.grey,
                          ),
                          Text('Menu',
                            style: GoogleFonts.lato(
                                fontSize: 12,
                                color: currentTab ==2? Colors.black :Colors.grey
                            ),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 30,
                      onPressed: (){
                        setState(() {
                          currenScreen=Notice();
                          currentTab=3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage(AppPath.notice_screen),
                              color: currentTab==3 ? Colors.blueAccent :Colors.grey
                          ),
                          Text('Thông báo',
                            style: GoogleFonts.lato(
                                fontSize: 12,
                                color: currentTab ==3? Colors.black :Colors.grey
                            ),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 30,
                      onPressed: (){
                        setState(() {
                          currenScreen=Menu();
                          currentTab=4;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage(AppPath.setting_screen),
                            color: currentTab==4 ? Colors.blueAccent :Colors.grey,
                          ),
                          Text('Menu',
                            style: GoogleFonts.lato(
                                fontSize: 12,
                                color: currentTab ==4? Colors.black :Colors.grey
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
