import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3/global/app_path.dart';

class EditPersonal extends StatelessWidget {
  EditPersonal({Key? key}) : super(key: key);
  bool male = true;
  bool female= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          'Thay đổi thông tin',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w600,
            fontSize: 25,
            color: Colors.white
          ),
        ),
      ),
      body: ListView(
          padding: const EdgeInsets.only(left: 25,right: 25),
          children: [
          const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child:Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xFFD6D6D6),
                          ),
                          shape: BoxShape.circle,
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage(AppPath.user_image),
                              fit: BoxFit.cover
                          )
                      ),
                    )
                ),const SizedBox(height: 20),
                Text(
                  'Tên',
                  style: GoogleFonts.roboto(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    height: 40,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText:('hai nam'),
                        contentPadding: EdgeInsets.only(left: 14, bottom: 8),
                        border: InputBorder.none
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text('Giới tính',
                style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                ),
                ),
                const SizedBox(height: 5),
                CheckboxListTile(
                    value: male,
                    onChanged: (val){
                    },
                    activeColor: Colors.black,
                    title: Text('Nam'),
                ),
                CheckboxListTile(
                  value: female,
                  onChanged: (val){},
                  activeColor: Colors.black,
                  title: Text('Nữ'),
                ),
                const SizedBox(height: 5),
                Text(
                  'Ngày sinh',
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                  ),
                ),
                const SizedBox(height: 10),
                Text('Email',
                  style: GoogleFonts.roboto(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    height: 40,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText:('hainamp99@gmail.com'),
                          contentPadding: EdgeInsets.only(left: 14, bottom: 8),
                          border: InputBorder.none
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Địa chỉ',
                      style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    TextButton(
                        onPressed:(){},
                        child:Text(''
                            'Thêm',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600
                        ),
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed:(){},
                      child: Text(''
                          'Xác nhận',
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          fontWeight: FontWeight.w800
                        ),),
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  side:BorderSide(color: Colors.blueAccent)
                              )
                          )
                      ),
                    )
                  ],
                )
              ],
            ),
          ]
      )
    );
  }
}
