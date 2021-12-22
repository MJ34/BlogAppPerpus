part of 'pages.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HeaderWidget(
        title: 'Category',
        child: GridView.count(
          crossAxisCount: 2,
          children: categoryList,
          mainAxisSpacing: 24,
          crossAxisSpacing: 24,
          childAspectRatio: 2 / 2.6,
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 22),
        ));
  }
}
