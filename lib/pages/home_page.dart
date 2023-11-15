import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:resep_app/main.dart';
// ignore: unused_import
import 'package:resep_app/models/resep_model.dart';
// ignore: unused_import
import 'package:resep_app/pages/detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ResepApp> dataResep = [
    ResepModel(
      image: "assets/buburayam(2).png",
      namaBarang: "bubur ayam", kondisi: '', deskripsi: '', stok: 0,
    ),
    ResepModel(
      image: "assets/food.png",
      namaBarang: "food", kondisi: '', deskripsi: '', stok: 0,
    ),
    ResepModel(
      image: "assets/lontong sayur.png", kondisi: '', deskripsi: '', stok: 0,
      namaBarang: "lontong",
    ),
    ResepModel(
      namaBarang: "Nasi Goreng",
      image: "assets/nasi goreng.png",  kondisi: '', deskripsi: '', stok: 0,
    ),
    ResepModel(
      namaBarang: "Roti Panggang",
      image: "assets/roti panggang.png",  kondisi: '', deskripsi: '', stok: 0,
    ),
    ResepModel(
      namaBarang: "telur mata sapi",
      image: "assets/telur mata sapi.png",  kondisi: '', deskripsi: '', stok: 0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: dataResep.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          final data = dataResep[index];
          return InkWell(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (builder) => DetailPage(
                  namaBarang: data.namaBarang,
                  image: data.image,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(data.image),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(data.namaBarang),
                      Text(data.stok.toString()),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

mixin ResepModel {
}


// ignore: non_constant_identifier_names
ResepModel({required String namaBarang, required String image, required int stok, required String kondisi, required String deskripsi}) {
}