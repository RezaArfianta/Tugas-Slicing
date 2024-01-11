import 'package:firsttest/tes.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Trying new device'),),
      body: Container(
        color: Colors.green,
        child: Center(
          child: FloatingActionButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => KatingTest()));
            },
            backgroundColor: Colors.amber,
      ),
      ),
      ),
    );
  }
}
