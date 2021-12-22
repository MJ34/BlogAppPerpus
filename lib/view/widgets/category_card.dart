part of 'widget.dart';

class CategoryCard extends StatelessWidget {

  final String image, title;

  const CategoryCard({Key? key,
    required this.image,
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        children: [
          Image.network(
            image.toString(),
            width: Get.width,
            fit: BoxFit.cover,
          ),
          Container(
            width: Get.width,
            height: Get.height,
            decoration: BoxDecoration(
                color: const Color(0xFF0D1839).withOpacity(0.5)
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    title.toString(),
                    style: whiteTextStyle.copyWith(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const ButtonWidget(
                    title: 'Read More',
                    color: ThemeColor.yellowColor,
                    horizontal: 10,
                    vertical: 8,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> categoryList = [
  const CategoryCard(image: "https://images.unsplash.com/photo-1600904290455-241ce18f78bb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=418&q=80", title: "Berita"),
  const CategoryCard(image: "https://images.unsplash.com/photo-1600904290455-241ce18f78bb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=418&q=80", title: "Artikel"),
  const CategoryCard(image: "https://images.unsplash.com/photo-1600904290455-241ce18f78bb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=418&q=80", title: "Wisata Jateng"),
  const CategoryCard(image: "https://images.unsplash.com/photo-1600904290455-241ce18f78bb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=418&q=80", title: "Kuliner Jateng"),
  const CategoryCard(image: "https://images.unsplash.com/photo-1600904290455-241ce18f78bb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=418&q=80", title: "UMKM Jateng"),
];
