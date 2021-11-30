import 'package:flutter/material.dart';
import 'package:untitled3/global/app_path.dart';
import 'package:untitled3/login/forgot_pass.dart';
import 'package:untitled3/login/signUp.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3/tabbar/bottom_tabbar.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var MyStyle=ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10)),
        shape: MaterialStateProperty.all<CircleBorder>(CircleBorder(
          side: BorderSide(color: Colors.white)
        )),
    );
    var MyBoder =OutlineInputBorder(
        borderRadius: new BorderRadius.only(
          bottomLeft: const Radius.circular(15),
          bottomRight: const Radius.circular(15),
          topLeft: const Radius.circular(15),
          topRight: const Radius.circular(15),
        )
    );
    return Scaffold(
        body: Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            constraints: BoxConstraints.expand(),
            color: Colors.white,
            child:
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image(
                  image: AssetImage(AppPath.logo_login),
                  width: 150,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon:const Icon(Icons.account_circle),
                          border: MyBoder,
                            hintText: 'Tên đăng nhập hoặc số điện thoại',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          border: MyBoder,
                          hintText: 'Mật khẩu',
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: onFoGot, child: Text('Quên mật khẩu ?'))
                    ],
                  )
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: onSignInClick,
                    child: Text(
                      "Đăng nhập",
                      style: GoogleFonts.roboto(
                        fontSize: 18
                      ),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side:BorderSide(color: Colors.blueAccent)
                        )
                      )
                    ),
                  ),
                ),
              ),
              Container(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Chưa có tài khoản?',
                      style: TextStyle(color: Colors.black),
                    ),
                    TextButton(
                        onPressed: onSignUp,
                        child: Text(
                          'Đăng kí',
                        ))
                  ],
                ),
              ),
              Container(
                height: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('hoặc')],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Container(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child:
                        ElevatedButton(
                          onPressed: onSigInWithFacebook,
                          child: Icon(
                            FontAwesomeIcons.facebookF,
                            color: Colors.blue,
                            size: 30,
                          ),
                          style: MyStyle,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 20),
                          child:Container(
                            child:ElevatedButton(
                                onPressed: onSigInWithGoogle,
                                child:Icon(
                                  FontAwesomeIcons.google,
                                  color: Colors.lightBlue,
                                  size: 30,
                                ),
                              style: MyStyle
                          )
                      )
                      )
                    ],
                  ),
                ),
              )
            ]
            )
        )
    );
  }
  void onSignInClick(){
    Navigator.push(context,MaterialPageRoute(builder: (context) => Task())
    );
  }
  void onFoGot(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>FoGot())
    );
  }
  void onSignUp(){
    Navigator.push(context,MaterialPageRoute(builder: (context) => SignUp())
    );
  }
  void onSigInWithGoogle(){

  }
  void onSigInWithFacebook(){
    //Navigator.push(context, MaterialPageRoute(builder: (context) => //LoginWithFb()));
  }
}