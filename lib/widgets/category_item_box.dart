import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryItemBox extends StatefulWidget {
  final String title; // menambahkan title ke constructor
  final String time; // menambahkan time ke constructor
  final String desc; //  menambahkan desc ke constructor
  final String imageUrl; // menambahkan imageUrl

  const CategoryItemBox({
    Key? key,
    required this.title,
    required this.time,
    required this.desc,
    required this.imageUrl,
  }) : super(key: key);

  @override
  _CategoryItemBoxState createState() => _CategoryItemBoxState();
}

class _CategoryItemBoxState extends State<CategoryItemBox> {
  bool _showDescription =
      false; // menambahkan variabel untuk menyimpan status deskripsi

  void _toggleDescription() {
    setState(() {
      _showDescription = !_showDescription; // bertukar nilai _showDescription
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // menambahkan GestureDetector untuk mendeteksi tap
      onTap:
          _toggleDescription, // menambahkan fungsi untuk menampilkan deskripsi
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          // menambahkan SingleChildScrollView untuk scroll deskripsi
          child: Column(
            mainAxisSize:
                MainAxisSize
                    .min, // menambahkan mainAxisSize untuk mengatur ukuran kolom
            mainAxisAlignment:
                MainAxisAlignment
                    .start, // menambahkan mainAxisAlignment untuk mengatur posisi kolom
            children: [
              SvgPicture.asset(
                // menambahkan gambar SVG
                widget.imageUrl,
                width: 70,
                height: 70,
                placeholderBuilder:
                    (context) => Container(
                      width: 70,
                      height: 70,
                      color: Colors.grey[300],
                      child: Icon(Icons.image, color: Colors.white),
                    ),
              ),
              SizedBox(height: 8),
              Text(
                widget.title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ), // menambahkan style untuk title
              SizedBox(height: 4),
              Text(
                widget.time,
                style: TextStyle(fontSize: 12, color: Colors.grey[600]),
              ),
              if (_showDescription) ...[
                SizedBox(height: 8),
                Text(
                  widget.desc, //  menambahkan deskripsi
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
