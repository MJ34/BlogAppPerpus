part of 'widget.dart';

class NewsCard extends StatelessWidget {
  final String image, title;
  const NewsCard({Key? key,
    required this.image,
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(10),
        topLeft: Radius.circular(10)),
      child: Container(
        width: Get.width / 2.5,
        color: ThemeColor.whiteColor,
        child: Column(
          children: [
            Image.network(
                image.toString(),
              height: Get.height / 6,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                title.toString(),
                style: purpleTextStyle.copyWith(
                    fontSize: 12),
                maxLines: 4,
              ))
          ],
        ),
      ),
    );
  }
}
