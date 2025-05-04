class CategoryItem {
  final String title;
  final String time;
  final String desc;

  CategoryItem({required this.title, required this.time, required this.desc});
}

List<CategoryItem> categoryItems = [
  CategoryItem(
    title: 'Makan',
    time: '10:00 AM',
    desc: 'Lorem Ipsum dolor sit amet consectetur adipiscing elit.',
  ),
  CategoryItem(
    title: 'Minum',
    time: '11:30 AM',
    desc: 'Lorem Ipsum dolor sit amet consectetur adipiscing elit.',
  ),
  CategoryItem(
    title: 'Kerja',
    time: '1:45 PM',
    desc:
        'Lorem Ipsum dolor sit amet consectetur adipiscing elit. et. Lorem Ipsum dolor sit amet consectetur adipiscing elit.',
  ),
  CategoryItem(
    title: 'Tidur',
    time: '3:00 PM',
    desc:
        'Lorem Ipsum dolor sit amet consectetur adipiscing elit. et. Lorem Ipsum dolor sit amet consectetur adipiscing elit.',
  ),
];
