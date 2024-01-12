import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'const/image.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
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
                    width: 58,
                    height: 59,
                    child: Image.asset(logo),
                  ),
                  GestureDetector(
                    child: Icon(
                      Icons.ios_share,
                      size: 25,
                      color: Color.fromARGB(255, 14, 14, 14),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 51,
              ),
              Container(
                width: 378,
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(3, 3),
                        blurRadius: 5,
                        color: Colors.black12,
                        spreadRadius: 3,
                      ),
                    ]),
                child: Column(
                  children: [
                    SizedBox(
                      height: 22,
                    ),
                    Image.asset(success),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      "Transaksi Berhasil",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black87),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Text(
                      "\$ 20.00",
                      style: GoogleFonts.inter(
                          fontSize: 27, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 335,
                      child: Divider(
                        height: 0.1,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 335,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Invoice number",
                            style: GoogleFonts.poppins(
                                fontSize: 13, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "00008575275",
                            style: GoogleFonts.poppins(
                                fontSize: 13, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 335,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Tanggal Transaksi",
                            style: GoogleFonts.poppins(
                                fontSize: 13, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "16 Juni 2023",
                            style: GoogleFonts.poppins(
                                fontSize: 13, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 335,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Jenis Pembayaran",
                            style: GoogleFonts.poppins(
                                fontSize: 13, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "QRIS",
                            style: GoogleFonts.poppins(
                                fontSize: 13, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 37,
              ),
              Container(
                width: 378,
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(3, 3),
                        blurRadius: 5,
                        color: Colors.black12,
                        spreadRadius: 3,
                      ),
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 22,
                    ),
                    Text(
                      "Detail Pemesanan",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 335,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Jenis Pemesanan",
                            style: GoogleFonts.poppins(
                                fontSize: 13, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "2x Frappucino - Monte",
                            style: GoogleFonts.poppins(
                                fontSize: 13, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 335,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Nama Pemesanan",
                            style: GoogleFonts.poppins(
                                fontSize: 13, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "Reza Arfianta",
                            style: GoogleFonts.poppins(
                                fontSize: 13, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 335,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Pemesanan",
                            style: GoogleFonts.poppins(
                                fontSize: 13, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "\$ 20.00",
                            style: GoogleFonts.poppins(
                                fontSize: 13, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 51,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(27),
                  color: Color(0xFF00623B),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 12,
                ),
                width: double.infinity,
                child: Center(
                  child: Text(
                    "Download E-Ticket",
                    style: GoogleFonts.raleway(
                        color: Color(0xFFFFFFFFF),
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
