import 'package:flutter/material.dart';
import 'package:flutter_QR/olay.dart';
import 'package:flutter_QR/tarama.dart';

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR CODE"),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image(
              image: NetworkImage(
                "https://cdn.pixabay.com/photo/2020/10/29/10/22/figures-5695819_960_720.jpg",
              ),
            ),
            SizedBox(height: 40),
            flatButon("QR Code Tarama", Olay()),
            SizedBox(height: 10),
            flatButon("QR Code Link", Tarama()),
          ],
        ),
      ),
    );
  }

  Widget flatButon(String text, Widget widget) {
    return FlatButton(
      padding: EdgeInsets.all(15),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: "Montserrat",
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => widget));
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: Colors.green, width: 3),
      ),
    );
  }
}
