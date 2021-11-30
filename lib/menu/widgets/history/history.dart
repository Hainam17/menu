import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3/manager/manager.dart';
import 'package:untitled3/menu/widgets/history/transaction.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  bool isHistory =false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          setState((){
            isHistory = !isHistory;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow:[ BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 1,
                  blurRadius: 1,
                offset: Offset(1,1.15),
              )
              ]
          ),
          height: isHistory? 150: 50,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Container(
                child: Row(
                  children: [
                  const SizedBox(height:50,width: 20),
                    Icon(
                    Icons.calendar_today_outlined,
                    color:Colors.deepPurple,
                ),
                  const SizedBox(width: 30),
                    Text(
                        'Lịch sử',
                         style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                      ),
                     ),
                  ]
                )
              ),
                isHistory?
                Padding(padding: const EdgeInsets.only(),
                child:Row(
                    children: [
                      SizedBox(width: 15),
                      TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Manager()));
                      },
                      child: Text(
                        'Lịch sử công việc',
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600
                        ),
                      ))
                  ]
                  )) :const SizedBox(),
                isHistory?
                Padding(padding: const EdgeInsets.only(),
                child:Row(
                        children: [
                          SizedBox(width: 15),
                          TextButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>TranSaction()));
                              },
                              child: Text(
                                'Lịch sử giao dịch',
                                style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600
                                ),
                              )
                          )
                        ]
                    )) :const SizedBox(height:0),
            ],
          ),
        )
      )
    );
  }
}