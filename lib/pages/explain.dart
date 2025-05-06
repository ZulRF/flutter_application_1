import 'package:flutter/material.dart';

//kelas ExplainPage
// digunakan untuk menampilkan halaman explain dari drawer
class ExplainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Explain Page')),
      body: Center(
        child: Text('Ini halaman explain', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
