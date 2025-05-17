import 'package:flutter/material.dart';

class GridWidget extends StatelessWidget {
  GridWidget({super.key});

  final List<String> imageURL = [
    "https://down-id.img.susercontent.com/file/id-11134207-7r98r-lnjir8hnzofwc6@resize_w900_nl.webp",
    "https://down-id.img.susercontent.com/file/id-11134207-7rasf-m3fv7uhg4tsz18@resize_w900_nl.webp",
    "https://down-id.img.susercontent.com/file/id-11134207-7r98r-lnjir8hnzofwc6@resize_w900_nl.webp",
    "https://down-id.img.susercontent.com/file/id-11134207-7qul0-lh8f033h0ajjff@resize_w900_nl.webp",
    "https://down-id.img.susercontent.com/file/id-11134207-7r98r-lnjir8hnzofwc6@resize_w900_nl.webp",
    "https://down-id.img.susercontent.com/file/id-11134207-7r992-ls0m1vn55j2xfa@resize_w900_nl.webp",
  ];

  final List<String> textList = ["Baju Putih"];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Jumlah kolom
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1,
      ),
      itemCount: imageURL.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.amberAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          alignment: Alignment.center,
          child: Column(
            children: [
              Image.network(
                imageURL[index],
                fit: BoxFit.fitWidth, // Agar gambar sesuai dengan ukuran kotak
                height: 100,
                width: 180,
              ),
              Text(
                "Baju ${index + 1}",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
