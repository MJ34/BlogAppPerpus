part of 'widget.dart';

class SliderWidget extends StatelessWidget {
  final String image, title;
  final Function? onTap;
  const SliderWidget(
      {Key? key, required this.image, required this.title, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          image.toString(),
          width: Get.width,
          fit: BoxFit.cover,
        ),
        Container(
          width: Get.width,
          height: Get.height,
          decoration:
              BoxDecoration(color: const Color(0xFF0D1839).withOpacity(0.5)),
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
                ButtonWidget(
                  title: 'Read More',
                  onTap: () {
                    if (onTap != null) {
                      onTap!();
                    }
                  },
                  color: ThemeColor.yellowColor,
                  horizontal: 10,
                  vertical: 8,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

