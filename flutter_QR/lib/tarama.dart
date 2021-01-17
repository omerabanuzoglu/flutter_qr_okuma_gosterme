import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Tarama extends StatefulWidget {
  @override
  _TaramaState createState() => _TaramaState();
}

class _TaramaState extends State<Tarama> {
  String qrData = "https://github.com/omerabanuzoglu";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "QR Code Tarama",
          style: TextStyle(
            fontFamily: "Montserrat",
          ),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            QrImage(
              data: qrData,
              backgroundColor: Colors.white,
            ),
            SizedBox(height: 25),
            Text(
              "Qr kodunu istediğiniz sitenin linkini giriniz.",
              style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height:10),
            Container(
              color: Colors.grey[300],
              child: TextField(              
                controller: qrText,
                decoration: InputDecoration(
                  hintText: "Link giriniz..",
                ),
              ),
            ),
            SizedBox(height: 10),
            FlatButton(
              padding: EdgeInsets.all(15),
              child: Text(
                "QR Code Göster",
                style: TextStyle(
                  fontFamily: "Montserrat",
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              onPressed: () {
                if (qrText.text.isEmpty) {
                  setState(() {
                    qrData = "https://omerabanuzoglu.blogspot.com";
                  });
                } else {
                  setState(() {
                    qrData = qrText.text;
                  });
                }
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Colors.green, width: 3),
              ),
            ),
          ],
        ),
      ),
    );
  }

  final qrText = TextEditingController();
}
