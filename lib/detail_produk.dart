import 'package:firsttest/checkout.dart';
import 'package:firsttest/const/image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Ini Adalah widget
class DetailProduk extends StatefulWidget {
  final String text;
  final String image;
  final String price;
  const DetailProduk(
      {super.key,
      required this.image,
      required this.text,
      required this.price});
  @override
  State<DetailProduk> createState() => _DetailProdukState();
}

class _DetailProdukState extends State<DetailProduk> {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: Icon(
                          Icons.chevron_left_outlined,
                          size: 30,
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      Container(
                        width: 59,
                        child: Image.asset(logo),
                      ),
                      Icon(
                        Icons.favorite,
                        size: 30,
                        color: Colors.red,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 380,
                    height: 400,
                    child: Image.asset(widget.image),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(widget.text,
                            style: GoogleFonts.raleway(
                                fontSize: 22, fontWeight: FontWeight.w500)),
                      ),
                      Text(
                        "\$${widget.price}",
                        style: GoogleFonts.poppins(
                          color: Color(0xFF00623B),
                          fontSize: 40,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at mi vitae augue feugiat scelerisque in a eros.",
                    style: GoogleFonts.raleway(
                      color: Color(0xFF6D6D6D),
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at mi vitae augue feugiat scelerisque in a eros.",
                    style: GoogleFonts.raleway(
                      color: Color(0xFF6D6D6D),
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xFF00623B),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                      ),
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          "Add To Bag",
                          style: GoogleFonts.raleway(
                            color: Color(0xFFFFFFFFF),
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CheckoutPage()));
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Safearea
// Icon
// SizeBox
// Padding
// SingleChildScrollView
// ElevatedButton
// TextButton
// Center