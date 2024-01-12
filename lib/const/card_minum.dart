import 'package:firsttest/const/image.dart';
import 'package:firsttest/detail_produk.dart';
// import 'package:firsttest/tes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardMinum extends StatelessWidget {
  CardMinum(
      {super.key,
      required this.text,
      required this.image,
      required this.price});
  final String text;
  final String image;
  final String price;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 256,
        height: 361,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Stack(alignment: Alignment.center, children: [
                Image.asset(drink_bg),
                Image.asset(image),
              ]),
            ),
            SizedBox(
              height: 13,
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Text(
                text,
                style: GoogleFonts.raleway(
                    fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              padding: EdgeInsets.only(left: 11, right: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$ ${price}",
                    style: GoogleFonts.poppins(fontSize: 20),
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailProduk(
                    text: text,
                    image: image,
                    price: price,
                  ))),
    );
  }
}
