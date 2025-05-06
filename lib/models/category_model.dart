class CategoryItem {
  final String title; // menambahkan title ke constructor
  final String time; // menambahkan time ke constructor
  final String desc; // menambahkan desc ke constructor
  final String imageUrl; // menambahkan imageUrl

  CategoryItem({
    required this.title,
    required this.time,
    required this.desc,
    required this.imageUrl,
  });
}

List<CategoryItem> categoryItems = [
  CategoryItem(
    title: 'Makanan',
    time: '10:00 AM',
    desc: 'Lorem Ipsum dolor sit amet consectetur adipiscing elit.',
    imageUrl: 'assets/icons/plate.svg',
  ),
  CategoryItem(
    title: 'Minuman',
    time: '11:30 AM',
    desc: 'Lorem Ipsum dolor sit amet consectetur adipiscing elit.',
    imageUrl: 'assets/icons/orange-snacks.svg',
  ),
  CategoryItem(
    title: 'Roti',
    time: '1:45 PM',
    desc:
        'Lorem Ipsum dolor sit amet consectetur adipiscing elit. et. Lorem Ipsum dolor sit amet consectetur adipiscing elit.',
    imageUrl: 'assets/icons/canai-bread.svg',
  ),
  CategoryItem(
    title: 'Kue',
    time: '3:00 PM',
    desc:
        'Lorem Ipsum dolor sit amet consectetur adipiscing elit. et. Lorem Ipsum dolor sit amet consectetur adipiscing elit.',
    imageUrl: 'assets/icons/blueberry-pancake.svg',
  ),
];
