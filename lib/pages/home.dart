import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/category_model.dart';
import 'package:flutter_application_1/widgets/category_item_box.dart';

class HomePage extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // AppBar dengan tombol menu dan pengaturan dan judul
        title: Text('My Random App'),
        leading: Builder(
          builder: (BuildContext context) {
            //menggunakan Builder untuk mendapatkan context yang berisi Scaffold

            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                //membuka drawer ketika tombol menu kiri atas ditekan

                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Tombol kanan ditekan')),
              ); // Menampilkan SnackBar ketika tombol pengaturan ditekan
            },
          ),
        ],
      ),
      drawer: _buildDrawer(
        context,
      ), // Drawer widget dengan menu Home dan Explain
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildInputField(), // Input field untuk memasukkan teks
            SizedBox(height: 20), // Spasi antara input field dan judul kategori
            _buildCategoryTitle(), // Judul kategori
            SizedBox(height: 20),
            Expanded(
              child: _buildItemGrid(),
            ), // Grid item yang dapat digeser secara horizontal
          ],
        ),
      ),
    );
  }

  /// Builds the input TextField
  Widget _buildInputField() {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        labelText: 'Sesuatu', // Label untuk input field
        border: OutlineInputBorder(),
      ),
    );
  }

  /// Membuat judul "Kategori"
  Widget _buildCategoryTitle() {
    return Text(
      'Category',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
    );
  }

  /// membuat grid item yang dapat digeser secara horizontal
  /// dengan menggunakan PageView.builder
  Widget _buildItemGrid() {
    return PageView.builder(
      itemCount: categoryItems.length,
      controller: PageController(viewportFraction: 0.9),
      itemBuilder: (context, index) {
        return Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            height: 180,
            child: CategoryItemBox(
              title: categoryItems[index].title, // Memasukkan title
              time: categoryItems[index].time, // Memasukkan time
              desc: categoryItems[index].desc, // Memasukkan desc
            ),
          ),
        );
      },
    );
  }

  /// Membuat item grid yang berisi informasi kategori
  Widget _buildGridItem(int index) {
    final item = categoryItems[index];
    return CategoryItemBox(title: item.title, time: item.time, desc: item.desc);
  }

  // Membuat drawer Sidebar dengan menu Home dan Explain
  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // Header drawer
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text(
              'Menu', // Judul header drawer
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            // Menu item "Home"
            title: Text('Home'),
            onTap: () {
              // Tindakan ketika menu Home ditekan
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Home dipilih')),
              ); // Menampilkan SnackBar Home dipilih
              Navigator.pop(context); // Tutup drawer
            },
          ),
          ListTile(
            title: Text('Explain'), // Menu item "Explain"
            onTap: () {
              Navigator.pop(context); // Tutup drawer dahulu
              Navigator.pushNamed(
                context,
                '/explain',
              ); // Pindah ke halaman Explain
            },
          ),
        ],
      ),
    );
  }
}
