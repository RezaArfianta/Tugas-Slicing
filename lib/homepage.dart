import 'package:firsttest/const/image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 20), 
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.format_list_bulleted,
                        size: 20,
                      ),
                      Container(
                        width: 58,
                        height: 59,
                        child: Image.asset(logo),
                      ),
                      Icon(
                        Icons.shopping_bag_outlined,
                        size: 25,
                        color: Color.fromARGB(255, 14, 14, 14),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Container(
                    child: Text("Our Way of loving \nyou back", style: GoogleFonts.raleway(
                      fontSize: 25,
                      fontWeight: FontWeight.w600
                    ),),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    
                  )
              ],
          ),) ,)),
    );
  }
}