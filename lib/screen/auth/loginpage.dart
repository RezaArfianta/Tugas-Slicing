import 'package:firsttest/const/const_import.dart';
import 'package:firsttest/screen/auth/get/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);
  static const routeName = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(logo),
          Container(
            color: green1,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Column(
              children: [
                Text(
                  "login",
                  style: GoogleFonts.raleway(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.only(top: 18),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(25)),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: TextFormField(
                          controller: controller.usernameText,
                          decoration: InputDecoration(
                              hintStyle:
                                  GoogleFonts.raleway(color: Colors.white),
                              hintText: "User name"),
                        )),
                        Icon(
                          Icons.account_circle_sharp,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 18, bottom: 5),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(25)),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: TextFormField(
                          controller: controller.passwordText,
                          decoration: InputDecoration(
                              hintStyle:
                                  GoogleFonts.raleway(color: Colors.white),
                              hintText: "Password"),
                        )),
                        Icon(
                          Icons.remove_red_eye,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: GoogleFonts.raleway(color: Colors.white),
                    )
                  ],
                ),
                controller.isLoadingCheck
                    ? CircularProgressIndicator()
                    : ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.yellow[800]),
                        onPressed: () {
                          controller.login();
                        },
                        child: Text(
                          "login",
                          style: GoogleFonts.raleway(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        )),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
