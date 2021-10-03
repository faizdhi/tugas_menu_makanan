import 'package:flutter/material.dart';
import 'package:menumakanan/models/menu.dart';
import 'package:menumakanan/pages/page2.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Menu> dataMenu = [
    Menu(
        "Pecel Lele",
        "Pecel lele atau pecek lele di Indonesia adalah nama sebuah makanan khas Jawa yang terdiri dari ikan lele dan sambal tomat",
        15000,
        "images/pecel_lele.jpg"),
    Menu(
        "Ayam Bakar",
        "Ayam bakar adalah sebuah hidangan Asia Tenggara Maritim, terutama hidangan Indonesia atau Malaysia, dari ayam yang dipanggang di atas arang.",
        13000,
        "images/ayam_bakar.jpg"),
    Menu("Es Jeruk", "Segarrr", 5000, "images/esjeruk.jpg"),
    Menu(
        "Bakso",
        "Bakso atau baso adalah jenis bola daging yang lazim ditemukan pada masakan Indonesia.",
        10000,
        "images/bakso.jpg"),
    Menu(
        "Kerupuk",
        "Kerupuk adalah suatu jenis makanan kering yang terbuat dari bahan-bahan yang mengandung pati cukup tinggi.",
        1000,
        "images/kerupuk.jpg")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Makanan"),
      ),
      body: ListView.builder(
        itemCount: dataMenu.length,
        itemBuilder: (context, index) => ListTile(
          trailing: TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return DetailPage(
                    dataMenu[index].nama,
                    dataMenu[index].deskripsi,
                    dataMenu[index].harga,
                    dataMenu[index].gambar);
              }));
            },
            child: Text(
              "Detail",
              style: TextStyle(color: Colors.black),
            ),
          ),
          leading: Text((index + 1).toString()),
          title: Text(dataMenu[index].nama),
        ),
      ),
    );
  }
}
