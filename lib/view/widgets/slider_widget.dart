part of 'widget.dart';

class SliderWidget extends StatelessWidget {
  final String image, title;
  const SliderWidget({Key? key,
    required this.image,
    required this.title
  }) : super(key: key);

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
    );
  }
}

List<Widget> slider = [
  const SliderWidget(
      image: "https://images.unsplash.com/photo-1600904290455-241ce18f78bb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=418&q=80",
      title: 'Kabar Perpustakaan: Perpustakaan Provinsi Jateng dibuka dengan prokes'),
  const SliderWidget(
      image: "https://images.unsplash.com/photo-1593173945705-d6451ed5909a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8bGlicmFyeSUyMGJvb2tzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      title: 'Kabar Perpustakaan: Perpustakaan Provinsi Jateng dibuka dengan prokes'),
  const SliderWidget(
      image: "https://images.unsplash.com/photo-1562932838-7a5b5d09f47a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGxpYnJhcnklMjBib29rc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      title: 'Kabar Perpustakaan: Perpustakaan Provinsi Jateng dibuka dengan prokes'),
  const SliderWidget(
      image: "https://images.unsplash.com/photo-1548048026-5a1a941d93d3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fGxpYnJhcnklMjBib29rc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      title: 'Kabar Perpustakaan: Perpustakaan Provinsi Jateng dibuka dengan prokes'),
  const SliderWidget(
      image: "https://images.unsplash.com/photo-1572381909680-a7f3514a62a9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzl8fGxpYnJhcnklMjBib29rc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      title: 'Kabar Perpustakaan: Perpustakaan Provinsi Jateng dibuka dengan prokes'),
];
