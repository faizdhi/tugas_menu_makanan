import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  String nama, deskripsi, gambar;
  int harga;
  DetailPage(this.nama, this.deskripsi, this.harga, this.gambar);
  @override
  _DetailPageState createState() =>
      _DetailPageState(nama, deskripsi, harga, gambar);
}

class _DetailPageState extends State<DetailPage> {
  String nama, deskripsi, gambar;
  int harga;
  _DetailPageState(this.nama, this.deskripsi, this.harga, this.gambar);
  @override
  Widget build(BuildContext context) {
    double mediaQueryHeight = MediaQuery.of(context).size.height;
    double mediaQuerywidht = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(nama),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  height: mediaQueryHeight * 0.2,
                  width: mediaQuerywidht * 0.4,
                  child: Image(
                    image: AssetImage(gambar),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text("Harga : Rp.$harga"),
              ),
              Padding(padding: EdgeInsets.only(top: 15), child: Text(deskripsi))
            ],
          ),
        ],
      ),
    );
  }
}
